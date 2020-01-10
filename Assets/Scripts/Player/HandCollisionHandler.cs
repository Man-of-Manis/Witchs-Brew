using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HandCollisionHandler : MonoBehaviour {

	public Transform handPosition;
	public Transform armPosition;
	public float wallDistance = 1f;
	public float sphereSize = 0.5f;
	public LayerMask laserLayer;
	public Vector3 originalPos;
	public Vector3 subAmount;

	public Vector3 laserHit;
	public Vector3 armPos;
	public Vector3 spherePoint;
	public bool drawnSphere = false;

	public float lerpBack;
	public float distance;

	public Vector3 direction;

	// Use this for initialization
	void Start () 
	{
		//wallDistance = wallDistance + 1f;
		originalPos = handPosition.localPosition;
		//subAmount = armPosition.position + new Vector3 (0f, 0f, 1f);

	}
	
	// Update is called once per frame
	void Update () 
	{
		armPos = armPosition.position;
		direction = armPosition.position - new Vector3 (0f, 0f, 1f);

		RaycastHit hit;
		//if (Physics.Raycast (armPosition.position, armPosition.forward, out hit, wallDistance, laserLayer))
		if (Physics.SphereCast (armPosition.position, sphereSize, transform.forward, out hit, wallDistance, laserLayer)) 
		//if (Physics.SphereCast (direction, sphereSize, transform.forward, out hit, wallDistance, laserLayer)) 
		{
			drawnSphere = true;
			Debug.DrawLine (armPosition.position, hit.point, Color.green);
			spherePoint = hit.point;

			laserHit = hit.point;

			//handPosition.localPosition = originalPos - new Vector3 (0f, 0f, ((subAmount.z - hit.point.z)));
			distance = (hit.point.z - armPosition.position.z);
			distance = Mathf.Clamp (distance, 0, wallDistance);

			handPosition.localPosition = originalPos - new Vector3 (0f, 0f, (wallDistance - distance));
		} 
		else 
		{
			drawnSphere = false;
			handPosition.localPosition = Vector3.Lerp(handPosition.localPosition, originalPos, lerpBack);
		}
	}
	void OnDrawGizmos()
	{
		if(drawnSphere)
		{
			Gizmos.color = Color.green;
			Gizmos.DrawSphere(spherePoint, sphereSize);
		}
	}
}
