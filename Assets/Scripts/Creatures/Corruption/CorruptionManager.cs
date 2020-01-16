using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CorruptionManager : MonoBehaviour
{
    public List<CorruptionArea> areas = new List<CorruptionArea>();
    public CorruptionArea closestArea;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        //closestArea = GetClosestArea(GameManager.Instance.player.transform.position);
    }

    public CorruptionArea GetClosestArea(Vector3 target)
    {
        float distance = float.MaxValue;
        int closestArea = 0;

        for(int i = 0; i < areas.Count; i++)
        {
            float areaDist = (Vector3.Distance(areas[i].transform.position, target));

            if (areaDist < distance)
            {
                closestArea = i;
                distance = areaDist;
            }
        }

        return areas[closestArea];
    }
}
