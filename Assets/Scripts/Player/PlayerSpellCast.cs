using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerSpellCast : MonoBehaviour
{
    public enum Spells { Astralation, Lunacity, Galaxius}

    public Spells CurrentSpell { get; private set; }

    public Texture2D[] spellTextures = new Texture2D[3];

    public Texture2D Astralation;
    public Texture2D Lunacity;
    public Texture2D Galaxius;

    public GameObject SpellSquare;

    Camera cam;
    Transform aimCam;

    Transform player;
    bool aiming;
    bool spellReady;
    public float laserDistance = 10f;
    [SerializeField] private ParticleSystem spellParticle;
    [SerializeField] private GameObject spellGO;
    public GameObject spellBlock;
    public bool usedSpell;
    [SerializeField]
    bool startSpellAudio = true;
    public LayerMask layers;
    AudioSource sAudioLoop;
    AudioSource sAudioOneShot;
    public Animator anim;
    int prevSound = -1;
    //Spell_Type.Spell spellName;
    bool startedParticle;
    bool lastHit;
    bool rightShoulder = true;
    RaycastHit usableHit;
    public PlayerAudio playerAudioFiles;
    UtilityController UC;

    Transform[] aimingCameras = new Transform[3];

    private void OnDisable()
    {
        //DisableSpellTexture();
        //spellParticle.Stop();
        startedParticle = false;
    }

    // Start is called before the first frame update
    void Start()
    {
        cam = Camera.main;
        player = GameObject.FindGameObjectWithTag("Player").transform;
        sAudioLoop = GameObject.Find("Spell_Audio_Loop").GetComponent<AudioSource>();
        sAudioOneShot = GameObject.Find("Spell_Audio_OneShot").GetComponent<AudioSource>();
        //anim = GetComponent<Animator>();
        //playerAudioFiles = gameObject.GetComponent<PlayerAudio>();
        UC = GetComponent<UtilityController>();

        for(int i = 0; i < aimingCameras.Length; i++)
        {
            aimingCameras[i] = cam.GetComponent<CameraCollision>().cameras[i];
        }
    }

    // Update is called once per frame
    void Update()
    {
        aiming = PlayerInput.Instance.AimInput;
        aimCam = aimingCameras[aimingCameras[2].gameObject.activeSelf ? 2 : 1];

        if (aiming && !usedSpell) //Aim wand and get object info
        {
            //AimingSpell();
            anim.SetBool("Readying_Spell", true);
        }
        else
        {
            DisableSpellTexture();
            lastHit = false;

            if (spellReady ) //Cast Spell
            {
                sAudioLoop.Stop();
                startSpellAudio = true;
                anim.SetTrigger("Cast_Spell");
                //CallPlayerSpell(spellBlock.GetComponent<Spell_Type>().activationSpell);
                //CallPlayerSpell(spellBlock.GetComponent<ISpellInteractable>().ActivationSpell);
                CallPlayerSpell((Spell_Names.Spell_Name)UC.Selection[0]);
                usedSpell = true;
                spellReady = false;
                ResetSpell();
            }
            if(startedParticle) //Hide wand locator
            {
                spellParticle.Stop();
                startedParticle = false;
            }
            sAudioLoop.Stop();
            anim.SetBool("Readying_Spell", false);
            startSpellAudio = true;
        }
    }

    public void ResetSpell()
    {
        StartCoroutine(ResetSpellCast());
    }

    IEnumerator ResetSpellCast() //Spell Cooldown
    {
        yield return new WaitForSeconds(1f);
        usedSpell = false;
    }

    void EnableSpellTexture()
    {
        SpellSquare.SetActive(true);
    }

    void DisableSpellTexture()
    {
        SpellSquare.SetActive(false);
    }

    void SetSpellTexture(RaycastHit hit, bool centered)
    {
        if(centered)
        {
            //Vector3 point = hit.collider.transform.Find("Spell_Point").transform.position;

            Vector3 point = (hit.collider.bounds.ClosestPoint(aimCam.position) - aimCam.position).normalized * 0.0001f + hit.collider.bounds.ClosestPoint(aimCam.position);
            //Vector3 point = hit.collider.bounds.ClosestPoint(aimCam.position);
            Vector3 end = point;

            if (!SpellSquare.activeSelf)
            {
                SpellSquare.transform.position = end;
            }

            SpellSquare.transform.position = Vector3.Lerp(SpellSquare.transform.position, end, Time.deltaTime / 0.25f);
        }
        else
        {
            Vector3 end = hit.point - (hit.point - player.position).normalized / 2;

            if (!SpellSquare.activeSelf)
            {
                SpellSquare.transform.position = end;
            }

            SpellSquare.transform.position = Vector3.Lerp(SpellSquare.transform.position, end, Time.deltaTime / 0.25f);
        }

        SpellSquare.transform.LookAt(2 * SpellSquare.transform.position - aimCam.position, Vector3.up);

        SpellSquare.transform.localScale = Vector3.one * (1 + Vector3.Distance(aimCam.position, SpellSquare.transform.position) / laserDistance);

        SpellSquare.GetComponent<MeshRenderer>().material.SetTexture("_Texture", spellTextures[UC.Selection[0]]); //Sets spell texture
    }

    void PlayParticle()
    {
        if (!startedParticle)
        {
            spellParticle.Play();
            startedParticle = true;
        }
    }

    bool IsPlayerFacingTarget(Transform target)
    {
        float fDotProduct;

        Vector3 dirToOther = (target.position - player.position).normalized;

        fDotProduct = Vector3.Dot(player.forward, dirToOther);
        //Debug.Log(fDotProduct + " / " + dirToOther);

        Debug.DrawRay(player.position, dirToOther, Color.green);

        Debug.DrawRay(player.position, player.forward, Color.blue);

        if (fDotProduct < 0.6f)
        {
            return false;
        }

        return true;
    }

    void AimingSpell() //Called when player is aiming the wand
    {
        
        var main = spellParticle.main;
        var shape = spellParticle.shape;

        RaycastHit hit;
        if (Physics.Raycast(aimCam.position, aimCam.forward, out hit, laserDistance, layers)) //True if ray hits an object
        {
            main.startColor = new Color(1f, 1f, 0f, 1f);

            ISpellInteractable interactable = hit.collider.GetComponent<ISpellInteractable>();

            if(interactable != null)
            {
                if(interactable.SpellReady)
                {
                    lastHit = true;
                    usableHit = hit;

                    //interactable.OnHover();
                    SetSpellTexture(usableHit, false);

                    EnableSpellTexture();
                    //spellParticle.transform.position = hit.transform.Find("Spell_Point").transform.position;
                    //spellParticle.transform.position = hit.collider.bounds.ClosestPoint(aimCam.position);
                    spellParticle.transform.position = hit.point;
                    shape.rotation = SpellSquare.transform.eulerAngles;
                    shape.rotation = SpellSquare.transform.eulerAngles;
                    PlayParticle();

                    shape.radius = 0.5f;
                    WandAudio(0);
                    spellBlock = hit.transform.gameObject;
                    spellReady = true;
                }

                else
                {
                    DisableSpellTexture();

                    spellParticle.transform.position = hit.point;

                    PlayParticle();

                    shape.radius = 0.1f;
                    WandAudio(1);
                    spellReady = false;
                    spellBlock = null;
                }
            }

            //Aiming at unusable target
            else
            {
                //Continue aiming at last target
                if(lastHit)
                {
                    SetSpellTexture(usableHit, true);

                    EnableSpellTexture();

                    //spellParticle.transform.position = usableHit.transform.Find("Spell_Point").transform.position != null ? usableHit.transform.Find("Spell_Point").transform.position : usableHit.point;
                    //spellParticle.transform.position = usableHit.transform.Find("Spell_Point").transform.position;
                    spellParticle.transform.position = usableHit.collider.bounds.ClosestPoint(aimCam.position);
                    //spellParticle.transform.position = hit.point;

                    PlayParticle();

                    shape.radius = 0.5f;
                    WandAudio(0);
                    spellBlock = usableHit.transform.gameObject;
                    spellReady = true;

                    lastHit = IsPlayerFacingTarget(usableHit.transform);
                }

                //Not aiming at target
                else
                {
                    DisableSpellTexture();

                    spellParticle.transform.position = hit.point;

                    PlayParticle();

                    shape.radius = 0.1f;
                    WandAudio(1);
                    spellReady = false;
                    spellBlock = null;
                }               
            }
        }

        else
        {
            if(lastHit)
            {
                SetSpellTexture(usableHit, true);

                EnableSpellTexture();

                //spellParticle.transform.position = usableHit.transform.Find("Spell_Point").transform.position;
                spellParticle.transform.position = usableHit.collider.bounds.ClosestPoint(aimCam.position);

                PlayParticle();

                shape.radius = 0.5f;
                WandAudio(0);
                spellBlock = usableHit.transform.gameObject;
                spellReady = true;

                lastHit = IsPlayerFacingTarget(usableHit.transform);
            }

            else
            {
                DisableSpellTexture();

                WandAudio(1);
                Vector3 laserForward = aimCam.position + aimCam.forward * laserDistance; //Sets the distance of the ray
                spellParticle.transform.position = laserForward;

                PlayParticle();

                shape.radius = 0.1f;
                main.startColor = new Color(1f, 0f, 0f, 1f);
                spellReady = false;
                spellBlock = null;
            }            
        }
    }

    void WandAudio(int sound)
    {
        if(prevSound != sound || startSpellAudio)
        {
            if(sound == 0)
            {
                WandAudioCall(sound, "Sounds/Casting/spell_target_loop", "Sounds/Casting/spell_target");
            }
            else if(sound == 1)
            {
                WandAudioCall(sound, "Sounds/Casting/spell_aim_loop", "Sounds/Casting/spell_aim");
            }
            else
            {
                WandAudioCall(sound, "Sounds/Casting/spell_aim_loop", "Sounds/Casting/spell_aim");
            }
        }
    }

    void WandAudioCall(int sound, string loop, string oneShot)
    {
        sAudioLoop.clip = Resources.Load<AudioClip>(loop);
        sAudioOneShot.PlayOneShot(Resources.Load<AudioClip>(oneShot));
        sAudioLoop.Play();
        prevSound = sound;
        startSpellAudio = false;
    }

    public void CallPlayerSpell(Spell_Names.Spell_Name spell)
    {
        //playerAudioFiles.CastSpellAudio(spell);
    }
}
