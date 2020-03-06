using System.Collections;
using System.Collections.Generic;
using UnityEngine;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class PauseMenu : MonoBehaviour
{
    public GameObject pauseMenuParent;
    public GameObject pauseMenu;
    public GameObject optionsMenu;
    public GameObject quitMenu;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if(PlayerInput.Instance.Menu)
        {
            pauseMenuParent.SetActive(!pauseMenuParent.activeSelf);
            pauseMenu.SetActive(true);
        }
    }

    public void Quit()
    {
#if UNITY_EDITOR
        EditorApplication.isPlaying = false;
#else
        Application.Quit();
#endif
    }
}
