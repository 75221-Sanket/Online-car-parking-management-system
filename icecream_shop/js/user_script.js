dlet profile = document.querySelector('.header .flex .profile-detail');

document.querySelector('#user-btn').onclick = () =>{
	profile.classList.toggle('active');
	searchForm.classList.remove('active');
}

let searchForm = document.querySelector('.header .flex .search-form');
document.querySelector('#search-btn').onclick = () =>{
	searchForm.classList.toggle('active');
	profile.classList.remove('active');
}

let navbar = document.querySelector('.navbar');

document.querySelector('#menu-btn').onclick = () =>{
	navbar.classList.toggle('active');
}
document.querySelector('#flex-btn').onclick = () =>{
	navbar.classList.toggle('active');
}

/*---------------testimonial--------------------*/
const btn = document.getElementsByTagName('.btn1');
const slide = document.queryElementByID('slide');

btn[0].onclick = function () {
	slide.style.transform = 'translateX(0px)';
	for (var i = 0; i < 4; i++) {
		
		btn[i].classList.remove('active');
	}
	this.classlist.add('active');
}
btn[1].onclick = function () {
	slide.style.transform = 'translateX(-800px)';
	for (var i = 0; i < 4; i++) {
		
		btn[i].classList.remove('active');
	}
	this.classlist.add('active');
}

btn[2].onclick = function () {
	slide.style.transform = 'translateX(-1600px)';
	for (var i = 0; i < 4; i++) {
		
		btn[i].classList.remove('active');
	}
	this.classlist.add('active');
}

btn[3].onclick = function () {
	slide.style.transform = 'translateX(-2400px)';
	for (var i = 0; i < 4; i++) {
		
		btn[i].classList.remove('active');
	}
	this.classlist.add('active');
}





