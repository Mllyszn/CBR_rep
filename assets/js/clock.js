const countdownElement = document.getElementById('countdown');

let duration = 60;

function startCountdown() {
    let timeRemaining = duration;

    const countdownInterval = setInterval(() => {
        let minutes = Math.floor(timeRemaining / 60);
        let seconds = timeRemaining % 60;

        minutes = minutes < 10 ? '0' + minutes : minutes;
        seconds = seconds < 10 ? '0' + seconds : seconds;

        countdownElement.textContent = `${minutes}:${seconds}`;

        timeRemaining--;
        if (timeRemaining < 0) {
            clearInterval(countdownInterval);
            countdownElement.textContent = "Time is done";
        }
    }, 1000);
}

startCountdown();

// proef test

document.addEventListener('DOMContentLoaded', () => {
    const countdownElement = document.getElementById('countdown');
    
    let duration = 60;
    
    function startCountdown() {
        let timeRemaining = duration;
    
        const countdownInterval = setInterval(() => {
            let minutes = Math.floor(timeRemaining / 60);
            let seconds = timeRemaining % 60;
    
            minutes = minutes < 10 ? '0' + minutes : minutes;
            seconds = seconds < 10 ? '0' + seconds : seconds;
    
            countdownElement.textContent = `${minutes}:${seconds}`;
    
            timeRemaining--;
            if (timeRemaining < 0) {
                clearInterval(countdownInterval);
                countdownElement.textContent = "Time is done";
            }
        }, 1000);
    }
    
    startCountdown();
});
