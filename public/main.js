  document.getElementById('openModal').addEventListener('click', function openModal(){
     document.getElementById('myModal').style.display = 'block'
     document.getElementById('blur').style.display = 'block'
     
	}, 3000)
 
  document.getElementById('close').addEventListener('click', function(){
	document.getElementById('myModal').style.display = 'none'
	document.getElementById('blur').style.display = 'none'
});