using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class IngredientPickupUI : MonoBehaviour
{
    [SerializeField] private Ingredients.IngredientType ingredient;

    public float lerpDuration = 0.5f;
    public float fadeInDuration = 0.25f;

    private Image ingrediantSprite;
    private Vector3 playerScreenPos;
    private Vector3[] endPos = new Vector3[4] { new Vector3(872f, -425f, 0f), new Vector3(648f, -425f, 0f), new Vector3(798f, -425f, 0f), new Vector3(723f, -425f, 0f)};
    private ItemController itemCon;

    void Start()
    {
        itemCon = GameManager.Instance.player.GetComponent<ItemController>();
        ingrediantSprite = GetComponent<Image>();
        StartCoroutine(MovementLerp());
        StartCoroutine(FadeIn());
    }

    IEnumerator MovementLerp()
    {
        for (float i = 0; i < 1f; i += (Time.deltaTime / lerpDuration))
        {
            if(i >= 0.75f)
            {
                GameManager.Instance.UIManager.GetComponent<SatchelUI>().PouchBounce((int)ingredient);
                itemCon.Ingredients((int)ingredient, 1);
                Destroy(gameObject);
            }

            transform.localPosition = Vector3.Lerp(transform.localPosition, endPos[(int)ingredient - 1], Mathf.SmoothStep(0f, 1f, i));
            yield return null;
        }
    }

    IEnumerator FadeIn()
    {
        for (float i = 0; i < 1f; i += (Time.deltaTime / fadeInDuration))
        {
            ingrediantSprite.color = new Color(ingrediantSprite.color.r, ingrediantSprite.color.g, ingrediantSprite.color.b, i);
            yield return null;
        }
    }
}
