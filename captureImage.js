
function configure (){

  Webcam.set({
    width: 480,
    height: 360,
    image_format: 'jpeg',
    jpeg_quality: 90
  });

}

function attach_webcam_2(){
  var constraints2 = {
    deviceId: { exact: devices_arr[1].deviceId }//intergrated Camera deviceId
    };

    Webcam.set({ constraints: constraints2 });
    Webcam.attach('#my_camera2');
    $('#my_camera2 video').attr('id','camera2')
}

//function that attach webcam container
function create_webcam_container(camera_id,camera_className,index){

  let camera_container = document.createElement('div')
  let attach_camera = document.createElement('div')
  let img_result = document.createElement('div')
  
  Object.assign(attach_camera,{
        id: camera_id, 
        className:camera_className
      })
  attach_camera.setAttribute('data-attach',`camera ${index}`)
  
  Object.assign(camera_container,{
    className:`camera_container container${index}-container`
  })
  
  Object.assign(img_result,{
    id: `results_container_${index}`,
    className: 'img_result'
  })

  camera_container.append(attach_camera)
  camera_container.append(img_result)
  document.querySelector('.camera_list').append(camera_container)
  }

// Attach Webcam to the video_container
function attach_webcam(deviceId,container){

  var camera_constraints = {
    deviceId: {
      exact:deviceId
    }
  }
  Webcam.set({
    constraints: camera_constraints
  })
  Webcam.attach(container)

}

  //function for capturing the image in the scanner_camera
  function saveSnap() {
    // Your code that uses Webcam.js goes here
      Webcam.snap(function(data_uri){
        document.getElementById('scanner_result_container').innerHTML =
        '<img id= "scanner_webcam" src = "'+ data_uri +'">';
      });
  
   var image_1 = document.querySelector("#scanner_webcam").src;
    Webcam.upload(image_1,'selfieCapture.php',function(code,text){
    });
    $('#snapShot_container').css('display','none');
  }

const snap_button = document.querySelector('#snapShot'); //button for capturing the image in scanner camera
navigator.mediaDevices.enumerateDevices()
.then(function(devices){

  let devices_arr = [];
  let index = 1; //index for devices_arr
  let camera = 0; //index for used camera

    devices.forEach(function(device) {
      if (device.kind === 'videoinput') {
        devices_arr.push(device)
      }   
    });
    
    //log the available camera 
    console.log(devices_arr)
    //unshift the built-in camera as the first index of array devices_arr
    let scanner = devices_arr.splice((devices_arr.length - 1),1)[0];
    devices_arr.unshift(scanner)

    //attach the first scanner camera
    var constraints1 = {
      deviceId: { exact: devices_arr[0].deviceId }//built-in Camera  deviceId
    };
    
    Webcam.set({ constraints: constraints1 });
    Webcam.attach('#scanner_container');
    $('#scanner_container video').attr('id','camera1')

    snap_button.addEventListener('click',function(){
    saveSnap()
     index++
     camera++

    //create another camera container and attach available camera(as of now )
    if(camera >= devices_arr.length){
    alert('No Device Available') 
      }else{
        create_webcam_container(`my_camera${index}`,'camera',index);
        attach_webcam(devices_arr[camera].deviceId,`my_camera${index}`)
      }
      
      camera_autoCapture(`results_container_${index}`)
      .then((autoCapture)=>{
        index--
        camera--
        });
    })

})

function camera_autoCapture(img_container){

  return new Promise((resolve)=>{
   function saveSnap2(img_container){
     let capture_img_per_cam = document.getElementById(img_container)
 
     Webcam.snap(function(data_uri){
       capture_img_per_cam.innerHTML =
           '<img id= "webcam" src = "'+ data_uri +'">';
        });
   
      var image_2 = document.querySelector(`#${img_container} #webcam`).src;
      Webcam.upload(image_2,'selfieCapture.php',function(code,text){
        // image_2.setAttribute('src','')    
      });
      capture_img_per_cam.removeChild(capture_img_per_cam.firstElementChild)
   }
 
   function remove_finished_container(img_container){
 
     const parent_container = $(`#${img_container}`).parent().parent();
     $(parent_container).html('')
   }
     const autoCapture = setInterval(() => {
         saveSnap2(img_container); 
 
       }, 30000);
 
       setTimeout(() => {
         Webcam.reset(img_container)
         remove_finished_container(img_container)
         clearInterval(autoCapture)
       }, 30400)
     resolve(autoCapture)
 
  })
}







