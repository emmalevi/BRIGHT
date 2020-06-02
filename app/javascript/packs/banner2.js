import Typed from 'typed.js';

const loadDynamicBanner2Text = () => {
  new Typed('#banner2-typed-text', {
    strings: ["Thank you.","You made the world brighter."],
    typeSpeed: 100,
    loop: false
  });
}

loadDynamicBanner2Text();
