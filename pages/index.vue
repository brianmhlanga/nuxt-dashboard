<template>
  <NuxtLayout name="home">

    <section class="surface-section px-6 py-5">
  <header class="flex w-full justify-content-between align-items-center border-bottom-1 surface-border pb-5">
    <div>
      <h2 class="mt-0 mb-3 font-medium text-2xl text-900">Listings</h2>
      <p class="mt-0 mb-0 font-normal text-base text-500">Vivamus id nisl interdum, blandit augue sit amet, eleifend mi.</p>
    </div>
    <button class="p-button p-component p-ripple p-button-outlined" type="button" aria-label="Report Issue" data-pc-name="button" data-pc-section="root" data-pd-ripple="true">
      <!---->
      <span class="p-button-label" data-pc-section="label">Report Issue</span>
      <!---->
      <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
      <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
    </button>
  </header>
  <section class="flex flex-wrap flex-column md:flex-row md:align-items-center gap-2 py-5">
    <div class="p-multiselect p-component p-inputwrapper w-full md:w-15rem" data-pc-name="multiselect" data-pc-section="root">
      <div class="p-hidden-accessible" data-pc-section="hiddeninputwrapper" data-p-hidden-accessible="true">
        <input type="text" readonly="" placeholder="Select a city" tabindex="0" role="combobox" aria-haspopup="listbox" aria-expanded="false" aria-controls="pv_id_122_list" data-pc-section="hiddeninput">
      </div>
      <div class="p-multiselect-label-container" data-pc-section="labelcontainer">
        <div class="p-multiselect-label p-placeholder" data-pc-section="label">Select a city</div>
      </div>
      <div class="p-multiselect-trigger" data-pc-section="trigger">
        <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-multiselect-trigger-icon" aria-hidden="true" data-pc-section="dropdownicon">
          <path d="M7.01744 10.398C6.91269 10.3985 6.8089 10.378 6.71215 10.3379C6.61541 10.2977 6.52766 10.2386 6.45405 10.1641L1.13907 4.84913C1.03306 4.69404 0.985221 4.5065 1.00399 4.31958C1.02276 4.13266 1.10693 3.95838 1.24166 3.82747C1.37639 3.69655 1.55301 3.61742 1.74039 3.60402C1.92777 3.59062 2.11386 3.64382 2.26584 3.75424L7.01744 8.47394L11.769 3.75424C11.9189 3.65709 12.097 3.61306 12.2748 3.62921C12.4527 3.64535 12.6199 3.72073 12.7498 3.84328C12.8797 3.96582 12.9647 4.12842 12.9912 4.30502C13.0177 4.48162 12.9841 4.662 12.8958 4.81724L7.58083 10.1322C7.50996 10.2125 7.42344 10.2775 7.32656 10.3232C7.22968 10.3689 7.12449 10.3944 7.01744 10.398Z" fill="currentColor"></path>
        </svg>
      </div>
    </div>
    <span class="p-calendar p-component p-inputwrapper p-inputwrapper-filled w-full md:w-15rem" data-pc-name="calendar" data-pc-section="root" readonlyinput="">
      <input id="range" type="text" role="combobox" class="p-inputtext p-component" autocomplete="off" aria-autocomplete="none" aria-haspopup="dialog" aria-expanded="false" aria-controls="pv_id_105_panel" inputmode="none" tabindex="0" data-pc-section="input">
      <!---->
    </span>
    <div class="p-dropdown p-component p-inputwrapper p-inputwrapper-filled w-full md:w-15rem" data-pc-name="dropdown" data-pc-section="root" id="pv_id_123">
      <span class="p-dropdown-label p-inputtext" tabindex="0" role="combobox" aria-label="$5000 - $10000" aria-haspopup="listbox" aria-expanded="false" aria-controls="pv_id_123_list" aria-disabled="false" data-pc-section="input">$5000 - $10000</span>
      <!---->
      <div class="p-dropdown-trigger" data-pc-section="trigger">
        <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-dropdown-trigger-icon" aria-hidden="true" data-pc-section="dropdownicon">
          <path d="M7.01744 10.398C6.91269 10.3985 6.8089 10.378 6.71215 10.3379C6.61541 10.2977 6.52766 10.2386 6.45405 10.1641L1.13907 4.84913C1.03306 4.69404 0.985221 4.5065 1.00399 4.31958C1.02276 4.13266 1.10693 3.95838 1.24166 3.82747C1.37639 3.69655 1.55301 3.61742 1.74039 3.60402C1.92777 3.59062 2.11386 3.64382 2.26584 3.75424L7.01744 8.47394L11.769 3.75424C11.9189 3.65709 12.097 3.61306 12.2748 3.62921C12.4527 3.64535 12.6199 3.72073 12.7498 3.84328C12.8797 3.96582 12.9647 4.12842 12.9912 4.30502C13.0177 4.48162 12.9841 4.662 12.8958 4.81724L7.58083 10.1322C7.50996 10.2125 7.42344 10.2775 7.32656 10.3232C7.22968 10.3689 7.12449 10.3944 7.01744 10.398Z" fill="currentColor"></path>
        </svg>
      </div>
    </div>
  </section>
  <img src="https://blocks.primevue.org/images/blocks/maps/map-1.png" alt="Map" class="w-full border-1 surface-border border-round">
  <div class="flex w-full justify-content-center sm:justify-content-end align-items-center my-5">
    <div class="p-selectbutton p-buttonset p-component" role="group" data-pc-name="selectbutton" data-pc-section="root">
      <div tabindex="0" aria-label="Sort By Date" role="radio" aria-checked="true" class="p-button p-component p-highlight" data-pc-section="button" data-p-highlight="true" data-p-disabled="false" data-pd-ripple="true">
        <span class="p-button-label" data-pc-section="label">Sort By Date</span>
        <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
      </div>
      <div tabindex="-1" aria-label="Sort by Price" role="radio" aria-checked="false" class="p-button p-component" data-pc-section="button" data-p-highlight="false" data-p-disabled="false" data-pd-ripple="true">
        <span class="p-button-label" data-pc-section="label">Sort by Price</span>
        <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
      </div>
    </div>
  </div>
  <div class="p-dataview p-component p-dataview-list" data-pc-name="dataview" data-pc-section="root">
    <!---->
    <!---->
    <div class="p-dataview-content" data-pc-section="content">
      <div class="p-grid p-nogutter grid grid-nogutter" data-pc-section="grid">
        <article class="flex flex-column md:flex-row w-full gap-3 p-3 border-round border-1 surface-border mb-3">
          <div class="relative">
            <img src="https://blocks.primevue.org/images/blocks/hotels/h4.jpeg" alt="Image" class="border-round w-full h-full md:w-14rem md:h-14rem">
            <p class="absolute px-2 py-1 border-round-lg text-sm font-normal text-white mt-0 mb-0" style="background-color: rgba(255, 255, 255, 0.3); backdrop-filter: blur(10px); top: 3%; left: 3%;">Superhost</p>
          </div>
          <div class="flex flex-column w-full gap-3">
            <div class="flex w-full justify-content-between align-items-center">
              <p class="font-semibold text-lg mt-0 mb-0 mr-3">Private room in Amsterdam</p>
              <div class="p-rating p-readonly" data-pc-name="rating" data-pc-section="root">
                <!---->
                <div class="p-rating-item p-rating-item-active" data-pc-section="item" data-p-active="true" data-p-focused="false">
                  <span class="p-hidden-accessible" data-pc-section="hiddeniteminputwrapper" data-p-hidden-accessible="true">
                    <input type="radio" readonly="" aria-label="1 star" data-pc-section="hiddeniteminput" value="1" name="pv_id_124">
                  </span>
                  <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-rating-icon" aria-hidden="true" data-pc-section="onicon">
                    <g clipPath="url(#pv_icon_clip_pv_id_106)">
                      <path d="M13.9718 5.36453C13.9398 5.26298 13.8798 5.17252 13.7986 5.10356C13.7175 5.0346 13.6186 4.98994 13.5132 4.97472L9.37043 4.37088L7.51307 0.617955C7.46021 0.529271 7.38522 0.455834 7.29545 0.404836C7.20568 0.353838 7.1042 0.327026 7.00096 0.327026C6.89771 0.327026 6.79624 0.353838 6.70647 0.404836C6.6167 0.455834 6.54171 0.529271 6.48885 0.617955L4.63149 4.37088L0.488746 4.97472C0.383363 4.98994 0.284416 5.0346 0.203286 5.10356C0.122157 5.17252 0.0621407 5.26298 0.03014 5.36453C-0.00402286 5.46571 -0.00924428 5.57442 0.0150645 5.67841C0.0393733 5.7824 0.0922457 5.87753 0.167722 5.95308L3.17924 8.87287L2.4684 13.0003C2.45038 13.1066 2.46229 13.2158 2.50278 13.3157C2.54328 13.4156 2.61077 13.5022 2.6977 13.5659C2.78477 13.628 2.88746 13.6644 2.99416 13.6712C3.10087 13.678 3.20733 13.6547 3.30153 13.6042L7.00096 11.6551L10.708 13.6042C10.79 13.6491 10.882 13.6728 10.9755 13.673C11.0958 13.6716 11.2129 13.6343 11.3119 13.5659C11.3988 13.5022 11.4663 13.4156 11.5068 13.3157C11.5473 13.2158 11.5592 13.1066 11.5412 13.0003L10.8227 8.87287L13.8266 5.95308C13.9033 5.87835 13.9577 5.7836 13.9833 5.67957C14.009 5.57554 14.005 5.4664 13.9718 5.36453Z" fill="currentColor"></path>
                    </g>
                    <defs>
                      <clipPath id="pv_icon_clip_pv_id_106">
                        <rect width="14" height="14" fill="white"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </div>
                <div class="p-rating-item p-rating-item-active" data-pc-section="item" data-p-active="true" data-p-focused="false">
                  <span class="p-hidden-accessible" data-pc-section="hiddeniteminputwrapper" data-p-hidden-accessible="true">
                    <input type="radio" readonly="" aria-label="2 stars" data-pc-section="hiddeniteminput" value="2" name="pv_id_124">
                  </span>
                  <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-rating-icon" aria-hidden="true" data-pc-section="onicon">
                    <g clipPath="url(#pv_icon_clip_pv_id_107)">
                      <path d="M13.9718 5.36453C13.9398 5.26298 13.8798 5.17252 13.7986 5.10356C13.7175 5.0346 13.6186 4.98994 13.5132 4.97472L9.37043 4.37088L7.51307 0.617955C7.46021 0.529271 7.38522 0.455834 7.29545 0.404836C7.20568 0.353838 7.1042 0.327026 7.00096 0.327026C6.89771 0.327026 6.79624 0.353838 6.70647 0.404836C6.6167 0.455834 6.54171 0.529271 6.48885 0.617955L4.63149 4.37088L0.488746 4.97472C0.383363 4.98994 0.284416 5.0346 0.203286 5.10356C0.122157 5.17252 0.0621407 5.26298 0.03014 5.36453C-0.00402286 5.46571 -0.00924428 5.57442 0.0150645 5.67841C0.0393733 5.7824 0.0922457 5.87753 0.167722 5.95308L3.17924 8.87287L2.4684 13.0003C2.45038 13.1066 2.46229 13.2158 2.50278 13.3157C2.54328 13.4156 2.61077 13.5022 2.6977 13.5659C2.78477 13.628 2.88746 13.6644 2.99416 13.6712C3.10087 13.678 3.20733 13.6547 3.30153 13.6042L7.00096 11.6551L10.708 13.6042C10.79 13.6491 10.882 13.6728 10.9755 13.673C11.0958 13.6716 11.2129 13.6343 11.3119 13.5659C11.3988 13.5022 11.4663 13.4156 11.5068 13.3157C11.5473 13.2158 11.5592 13.1066 11.5412 13.0003L10.8227 8.87287L13.8266 5.95308C13.9033 5.87835 13.9577 5.7836 13.9833 5.67957C14.009 5.57554 14.005 5.4664 13.9718 5.36453Z" fill="currentColor"></path>
                    </g>
                    <defs>
                      <clipPath id="pv_icon_clip_pv_id_107">
                        <rect width="14" height="14" fill="white"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </div>
                <div class="p-rating-item p-rating-item-active" data-pc-section="item" data-p-active="true" data-p-focused="false">
                  <span class="p-hidden-accessible" data-pc-section="hiddeniteminputwrapper" data-p-hidden-accessible="true">
                    <input type="radio" readonly="" aria-label="3 stars" data-pc-section="hiddeniteminput" value="3" name="pv_id_124">
                  </span>
                  <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-rating-icon" aria-hidden="true" data-pc-section="onicon">
                    <g clipPath="url(#pv_icon_clip_pv_id_108)">
                      <path d="M13.9718 5.36453C13.9398 5.26298 13.8798 5.17252 13.7986 5.10356C13.7175 5.0346 13.6186 4.98994 13.5132 4.97472L9.37043 4.37088L7.51307 0.617955C7.46021 0.529271 7.38522 0.455834 7.29545 0.404836C7.20568 0.353838 7.1042 0.327026 7.00096 0.327026C6.89771 0.327026 6.79624 0.353838 6.70647 0.404836C6.6167 0.455834 6.54171 0.529271 6.48885 0.617955L4.63149 4.37088L0.488746 4.97472C0.383363 4.98994 0.284416 5.0346 0.203286 5.10356C0.122157 5.17252 0.0621407 5.26298 0.03014 5.36453C-0.00402286 5.46571 -0.00924428 5.57442 0.0150645 5.67841C0.0393733 5.7824 0.0922457 5.87753 0.167722 5.95308L3.17924 8.87287L2.4684 13.0003C2.45038 13.1066 2.46229 13.2158 2.50278 13.3157C2.54328 13.4156 2.61077 13.5022 2.6977 13.5659C2.78477 13.628 2.88746 13.6644 2.99416 13.6712C3.10087 13.678 3.20733 13.6547 3.30153 13.6042L7.00096 11.6551L10.708 13.6042C10.79 13.6491 10.882 13.6728 10.9755 13.673C11.0958 13.6716 11.2129 13.6343 11.3119 13.5659C11.3988 13.5022 11.4663 13.4156 11.5068 13.3157C11.5473 13.2158 11.5592 13.1066 11.5412 13.0003L10.8227 8.87287L13.8266 5.95308C13.9033 5.87835 13.9577 5.7836 13.9833 5.67957C14.009 5.57554 14.005 5.4664 13.9718 5.36453Z" fill="currentColor"></path>
                    </g>
                    <defs>
                      <clipPath id="pv_icon_clip_pv_id_108">
                        <rect width="14" height="14" fill="white"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </div>
                <div class="p-rating-item p-rating-item-active" data-pc-section="item" data-p-active="true" data-p-focused="false">
                  <span class="p-hidden-accessible" data-pc-section="hiddeniteminputwrapper" data-p-hidden-accessible="true">
                    <input type="radio" readonly="" aria-label="4 stars" data-pc-section="hiddeniteminput" value="4" name="pv_id_124">
                  </span>
                  <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-rating-icon" aria-hidden="true" data-pc-section="onicon">
                    <g clipPath="url(#pv_icon_clip_pv_id_109)">
                      <path d="M13.9718 5.36453C13.9398 5.26298 13.8798 5.17252 13.7986 5.10356C13.7175 5.0346 13.6186 4.98994 13.5132 4.97472L9.37043 4.37088L7.51307 0.617955C7.46021 0.529271 7.38522 0.455834 7.29545 0.404836C7.20568 0.353838 7.1042 0.327026 7.00096 0.327026C6.89771 0.327026 6.79624 0.353838 6.70647 0.404836C6.6167 0.455834 6.54171 0.529271 6.48885 0.617955L4.63149 4.37088L0.488746 4.97472C0.383363 4.98994 0.284416 5.0346 0.203286 5.10356C0.122157 5.17252 0.0621407 5.26298 0.03014 5.36453C-0.00402286 5.46571 -0.00924428 5.57442 0.0150645 5.67841C0.0393733 5.7824 0.0922457 5.87753 0.167722 5.95308L3.17924 8.87287L2.4684 13.0003C2.45038 13.1066 2.46229 13.2158 2.50278 13.3157C2.54328 13.4156 2.61077 13.5022 2.6977 13.5659C2.78477 13.628 2.88746 13.6644 2.99416 13.6712C3.10087 13.678 3.20733 13.6547 3.30153 13.6042L7.00096 11.6551L10.708 13.6042C10.79 13.6491 10.882 13.6728 10.9755 13.673C11.0958 13.6716 11.2129 13.6343 11.3119 13.5659C11.3988 13.5022 11.4663 13.4156 11.5068 13.3157C11.5473 13.2158 11.5592 13.1066 11.5412 13.0003L10.8227 8.87287L13.8266 5.95308C13.9033 5.87835 13.9577 5.7836 13.9833 5.67957C14.009 5.57554 14.005 5.4664 13.9718 5.36453Z" fill="currentColor"></path>
                    </g>
                    <defs>
                      <clipPath id="pv_icon_clip_pv_id_109">
                        <rect width="14" height="14" fill="white"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </div>
                <div class="p-rating-item" data-pc-section="item" data-p-active="false" data-p-focused="false">
                  <span class="p-hidden-accessible" data-pc-section="hiddeniteminputwrapper" data-p-hidden-accessible="true">
                    <input type="radio" readonly="" aria-label="5 stars" data-pc-section="hiddeniteminput" value="5" name="pv_id_124">
                  </span>
                  <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-rating-icon" aria-hidden="true" data-pc-section="officon">
                    <g clipPath="url(#pv_icon_clip_pv_id_110)">
                      <path d="M10.9741 13.6721C10.8806 13.6719 10.7886 13.6483 10.7066 13.6033L7.00002 11.6545L3.29345 13.6033C3.19926 13.6539 3.09281 13.6771 2.98612 13.6703C2.87943 13.6636 2.77676 13.6271 2.6897 13.5651C2.60277 13.5014 2.53529 13.4147 2.4948 13.3148C2.45431 13.215 2.44241 13.1058 2.46042 12.9995L3.17881 8.87264L0.167699 5.95324C0.0922333 5.8777 0.039368 5.78258 0.0150625 5.67861C-0.00924303 5.57463 -0.00402231 5.46594 0.030136 5.36477C0.0621323 5.26323 0.122141 5.17278 0.203259 5.10383C0.284377 5.03488 0.383311 4.99023 0.488681 4.97501L4.63087 4.37126L6.48797 0.618832C6.54083 0.530159 6.61581 0.456732 6.70556 0.405741C6.79532 0.35475 6.89678 0.327942 7.00002 0.327942C7.10325 0.327942 7.20471 0.35475 7.29447 0.405741C7.38422 0.456732 7.4592 0.530159 7.51206 0.618832L9.36916 4.37126L13.5114 4.97501C13.6167 4.99023 13.7157 5.03488 13.7968 5.10383C13.8779 5.17278 13.9379 5.26323 13.9699 5.36477C14.0041 5.46594 14.0093 5.57463 13.985 5.67861C13.9607 5.78258 13.9078 5.8777 13.8323 5.95324L10.8212 8.87264L11.532 12.9995C11.55 13.1058 11.5381 13.215 11.4976 13.3148C11.4571 13.4147 11.3896 13.5014 11.3027 13.5651C11.2059 13.632 11.0917 13.6692 10.9741 13.6721ZM7.00002 10.4393C7.09251 10.4404 7.18371 10.4613 7.2675 10.5005L10.2098 12.029L9.65193 8.75036C9.6368 8.6584 9.64343 8.56418 9.6713 8.47526C9.69918 8.38633 9.74751 8.30518 9.81242 8.23832L12.1969 5.94559L8.90298 5.45648C8.81188 5.44198 8.72555 5.406 8.65113 5.35152C8.57671 5.29703 8.51633 5.2256 8.475 5.14314L7.00002 2.1626L5.52503 5.15078C5.4837 5.23324 5.42332 5.30467 5.3489 5.35916C5.27448 5.41365 5.18815 5.44963 5.09705 5.46412L1.80318 5.94559L4.18761 8.23832C4.25252 8.30518 4.30085 8.38633 4.32873 8.47526C4.3566 8.56418 4.36323 8.6584 4.3481 8.75036L3.7902 12.0519L6.73253 10.5234C6.81451 10.4762 6.9058 10.4475 7.00002 10.4393Z" fill="currentColor"></path>
                    </g>
                    <defs>
                      <clipPath id="pv_icon_clip_pv_id_110">
                        <rect width="14" height="14" fill="white"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </div>
              </div>
            </div>
            <p class="font-normal text-lg text-600 mt-0 mb-0">Comfortable single room</p>
            <div class="flex flex-column md:flex-row flex-wrap md:justify-content-between mt-auto">
              <div class="flex gap-3">
                <p class="text-base flex align-items-center text-900 mt-0 mb-1">
                  <i class="pi pi-users mr-2"></i>
                  <span class="font-medium">2 Guests</span>
                </p>
                <p class="text-base flex align-items-center text-900 mt-0 mb-1">
                  <i class="pi pi-wifi mr-2"></i>
                  <span class="font-medium">1 Gigabit</span>
                </p>
                <p class="text-base flex align-items-center text-900 mt-0 mb-1">
                  <i class="pi pi-check-circle mr-2"></i>
                  <span class="font-medium">Verified</span>
                </p>
              </div>
              <div class="flex align-items-center">
                <p class="font-semibold text-4xl text-900 mt-0 mb-0">$1,143</p>
                <i class="pi pi-circle-fill text-xs text-700 mx-2"></i>
                <p class="flex align-items-center w-full text-lg text-700">9 nights</p>
              </div>
            </div>
          </div>
        </article>
        <!---->
        <article class="flex flex-column md:flex-row w-full gap-3 p-3 border-round border-1 surface-border mb-3">
          <div class="relative">
            <img src="https://blocks.primevue.org/images/blocks/hotels/h5.jpeg" alt="Image" class="border-round w-full h-full md:w-14rem md:h-14rem">
            <p class="absolute px-2 py-1 border-round-lg text-sm font-normal text-white mt-0 mb-0" style="background-color: rgba(255, 255, 255, 0.3); backdrop-filter: blur(10px); top: 3%; left: 3%;">Superhost</p>
          </div>
          <div class="flex flex-column w-full gap-3">
            <div class="flex w-full justify-content-between align-items-center">
              <p class="font-semibold text-lg mt-0 mb-0 mr-3">Luxurious spacious suite Jordan</p>
              <div class="p-rating p-readonly" data-pc-name="rating" data-pc-section="root">
                <!---->
                <div class="p-rating-item p-rating-item-active" data-pc-section="item" data-p-active="true" data-p-focused="false">
                  <span class="p-hidden-accessible" data-pc-section="hiddeniteminputwrapper" data-p-hidden-accessible="true">
                    <input type="radio" readonly="" aria-label="1 star" data-pc-section="hiddeniteminput" value="1" name="pv_id_125">
                  </span>
                  <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-rating-icon" aria-hidden="true" data-pc-section="onicon">
                    <g clipPath="url(#pv_icon_clip_pv_id_111)">
                      <path d="M13.9718 5.36453C13.9398 5.26298 13.8798 5.17252 13.7986 5.10356C13.7175 5.0346 13.6186 4.98994 13.5132 4.97472L9.37043 4.37088L7.51307 0.617955C7.46021 0.529271 7.38522 0.455834 7.29545 0.404836C7.20568 0.353838 7.1042 0.327026 7.00096 0.327026C6.89771 0.327026 6.79624 0.353838 6.70647 0.404836C6.6167 0.455834 6.54171 0.529271 6.48885 0.617955L4.63149 4.37088L0.488746 4.97472C0.383363 4.98994 0.284416 5.0346 0.203286 5.10356C0.122157 5.17252 0.0621407 5.26298 0.03014 5.36453C-0.00402286 5.46571 -0.00924428 5.57442 0.0150645 5.67841C0.0393733 5.7824 0.0922457 5.87753 0.167722 5.95308L3.17924 8.87287L2.4684 13.0003C2.45038 13.1066 2.46229 13.2158 2.50278 13.3157C2.54328 13.4156 2.61077 13.5022 2.6977 13.5659C2.78477 13.628 2.88746 13.6644 2.99416 13.6712C3.10087 13.678 3.20733 13.6547 3.30153 13.6042L7.00096 11.6551L10.708 13.6042C10.79 13.6491 10.882 13.6728 10.9755 13.673C11.0958 13.6716 11.2129 13.6343 11.3119 13.5659C11.3988 13.5022 11.4663 13.4156 11.5068 13.3157C11.5473 13.2158 11.5592 13.1066 11.5412 13.0003L10.8227 8.87287L13.8266 5.95308C13.9033 5.87835 13.9577 5.7836 13.9833 5.67957C14.009 5.57554 14.005 5.4664 13.9718 5.36453Z" fill="currentColor"></path>
                    </g>
                    <defs>
                      <clipPath id="pv_icon_clip_pv_id_111">
                        <rect width="14" height="14" fill="white"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </div>
                <div class="p-rating-item p-rating-item-active" data-pc-section="item" data-p-active="true" data-p-focused="false">
                  <span class="p-hidden-accessible" data-pc-section="hiddeniteminputwrapper" data-p-hidden-accessible="true">
                    <input type="radio" readonly="" aria-label="2 stars" data-pc-section="hiddeniteminput" value="2" name="pv_id_125">
                  </span>
                  <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-rating-icon" aria-hidden="true" data-pc-section="onicon">
                    <g clipPath="url(#pv_icon_clip_pv_id_112)">
                      <path d="M13.9718 5.36453C13.9398 5.26298 13.8798 5.17252 13.7986 5.10356C13.7175 5.0346 13.6186 4.98994 13.5132 4.97472L9.37043 4.37088L7.51307 0.617955C7.46021 0.529271 7.38522 0.455834 7.29545 0.404836C7.20568 0.353838 7.1042 0.327026 7.00096 0.327026C6.89771 0.327026 6.79624 0.353838 6.70647 0.404836C6.6167 0.455834 6.54171 0.529271 6.48885 0.617955L4.63149 4.37088L0.488746 4.97472C0.383363 4.98994 0.284416 5.0346 0.203286 5.10356C0.122157 5.17252 0.0621407 5.26298 0.03014 5.36453C-0.00402286 5.46571 -0.00924428 5.57442 0.0150645 5.67841C0.0393733 5.7824 0.0922457 5.87753 0.167722 5.95308L3.17924 8.87287L2.4684 13.0003C2.45038 13.1066 2.46229 13.2158 2.50278 13.3157C2.54328 13.4156 2.61077 13.5022 2.6977 13.5659C2.78477 13.628 2.88746 13.6644 2.99416 13.6712C3.10087 13.678 3.20733 13.6547 3.30153 13.6042L7.00096 11.6551L10.708 13.6042C10.79 13.6491 10.882 13.6728 10.9755 13.673C11.0958 13.6716 11.2129 13.6343 11.3119 13.5659C11.3988 13.5022 11.4663 13.4156 11.5068 13.3157C11.5473 13.2158 11.5592 13.1066 11.5412 13.0003L10.8227 8.87287L13.8266 5.95308C13.9033 5.87835 13.9577 5.7836 13.9833 5.67957C14.009 5.57554 14.005 5.4664 13.9718 5.36453Z" fill="currentColor"></path>
                    </g>
                    <defs>
                      <clipPath id="pv_icon_clip_pv_id_112">
                        <rect width="14" height="14" fill="white"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </div>
                <div class="p-rating-item p-rating-item-active" data-pc-section="item" data-p-active="true" data-p-focused="false">
                  <span class="p-hidden-accessible" data-pc-section="hiddeniteminputwrapper" data-p-hidden-accessible="true">
                    <input type="radio" readonly="" aria-label="3 stars" data-pc-section="hiddeniteminput" value="3" name="pv_id_125">
                  </span>
                  <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-rating-icon" aria-hidden="true" data-pc-section="onicon">
                    <g clipPath="url(#pv_icon_clip_pv_id_113)">
                      <path d="M13.9718 5.36453C13.9398 5.26298 13.8798 5.17252 13.7986 5.10356C13.7175 5.0346 13.6186 4.98994 13.5132 4.97472L9.37043 4.37088L7.51307 0.617955C7.46021 0.529271 7.38522 0.455834 7.29545 0.404836C7.20568 0.353838 7.1042 0.327026 7.00096 0.327026C6.89771 0.327026 6.79624 0.353838 6.70647 0.404836C6.6167 0.455834 6.54171 0.529271 6.48885 0.617955L4.63149 4.37088L0.488746 4.97472C0.383363 4.98994 0.284416 5.0346 0.203286 5.10356C0.122157 5.17252 0.0621407 5.26298 0.03014 5.36453C-0.00402286 5.46571 -0.00924428 5.57442 0.0150645 5.67841C0.0393733 5.7824 0.0922457 5.87753 0.167722 5.95308L3.17924 8.87287L2.4684 13.0003C2.45038 13.1066 2.46229 13.2158 2.50278 13.3157C2.54328 13.4156 2.61077 13.5022 2.6977 13.5659C2.78477 13.628 2.88746 13.6644 2.99416 13.6712C3.10087 13.678 3.20733 13.6547 3.30153 13.6042L7.00096 11.6551L10.708 13.6042C10.79 13.6491 10.882 13.6728 10.9755 13.673C11.0958 13.6716 11.2129 13.6343 11.3119 13.5659C11.3988 13.5022 11.4663 13.4156 11.5068 13.3157C11.5473 13.2158 11.5592 13.1066 11.5412 13.0003L10.8227 8.87287L13.8266 5.95308C13.9033 5.87835 13.9577 5.7836 13.9833 5.67957C14.009 5.57554 14.005 5.4664 13.9718 5.36453Z" fill="currentColor"></path>
                    </g>
                    <defs>
                      <clipPath id="pv_icon_clip_pv_id_113">
                        <rect width="14" height="14" fill="white"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </div>
                <div class="p-rating-item p-rating-item-active" data-pc-section="item" data-p-active="true" data-p-focused="false">
                  <span class="p-hidden-accessible" data-pc-section="hiddeniteminputwrapper" data-p-hidden-accessible="true">
                    <input type="radio" readonly="" aria-label="4 stars" data-pc-section="hiddeniteminput" value="4" name="pv_id_125">
                  </span>
                  <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-rating-icon" aria-hidden="true" data-pc-section="onicon">
                    <g clipPath="url(#pv_icon_clip_pv_id_114)">
                      <path d="M13.9718 5.36453C13.9398 5.26298 13.8798 5.17252 13.7986 5.10356C13.7175 5.0346 13.6186 4.98994 13.5132 4.97472L9.37043 4.37088L7.51307 0.617955C7.46021 0.529271 7.38522 0.455834 7.29545 0.404836C7.20568 0.353838 7.1042 0.327026 7.00096 0.327026C6.89771 0.327026 6.79624 0.353838 6.70647 0.404836C6.6167 0.455834 6.54171 0.529271 6.48885 0.617955L4.63149 4.37088L0.488746 4.97472C0.383363 4.98994 0.284416 5.0346 0.203286 5.10356C0.122157 5.17252 0.0621407 5.26298 0.03014 5.36453C-0.00402286 5.46571 -0.00924428 5.57442 0.0150645 5.67841C0.0393733 5.7824 0.0922457 5.87753 0.167722 5.95308L3.17924 8.87287L2.4684 13.0003C2.45038 13.1066 2.46229 13.2158 2.50278 13.3157C2.54328 13.4156 2.61077 13.5022 2.6977 13.5659C2.78477 13.628 2.88746 13.6644 2.99416 13.6712C3.10087 13.678 3.20733 13.6547 3.30153 13.6042L7.00096 11.6551L10.708 13.6042C10.79 13.6491 10.882 13.6728 10.9755 13.673C11.0958 13.6716 11.2129 13.6343 11.3119 13.5659C11.3988 13.5022 11.4663 13.4156 11.5068 13.3157C11.5473 13.2158 11.5592 13.1066 11.5412 13.0003L10.8227 8.87287L13.8266 5.95308C13.9033 5.87835 13.9577 5.7836 13.9833 5.67957C14.009 5.57554 14.005 5.4664 13.9718 5.36453Z" fill="currentColor"></path>
                    </g>
                    <defs>
                      <clipPath id="pv_icon_clip_pv_id_114">
                        <rect width="14" height="14" fill="white"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </div>
                <div class="p-rating-item p-rating-item-active" data-pc-section="item" data-p-active="true" data-p-focused="false">
                  <span class="p-hidden-accessible" data-pc-section="hiddeniteminputwrapper" data-p-hidden-accessible="true">
                    <input type="radio" readonly="" aria-label="5 stars" data-pc-section="hiddeniteminput" value="5" name="pv_id_125">
                  </span>
                  <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-rating-icon" aria-hidden="true" data-pc-section="onicon">
                    <g clipPath="url(#pv_icon_clip_pv_id_115)">
                      <path d="M13.9718 5.36453C13.9398 5.26298 13.8798 5.17252 13.7986 5.10356C13.7175 5.0346 13.6186 4.98994 13.5132 4.97472L9.37043 4.37088L7.51307 0.617955C7.46021 0.529271 7.38522 0.455834 7.29545 0.404836C7.20568 0.353838 7.1042 0.327026 7.00096 0.327026C6.89771 0.327026 6.79624 0.353838 6.70647 0.404836C6.6167 0.455834 6.54171 0.529271 6.48885 0.617955L4.63149 4.37088L0.488746 4.97472C0.383363 4.98994 0.284416 5.0346 0.203286 5.10356C0.122157 5.17252 0.0621407 5.26298 0.03014 5.36453C-0.00402286 5.46571 -0.00924428 5.57442 0.0150645 5.67841C0.0393733 5.7824 0.0922457 5.87753 0.167722 5.95308L3.17924 8.87287L2.4684 13.0003C2.45038 13.1066 2.46229 13.2158 2.50278 13.3157C2.54328 13.4156 2.61077 13.5022 2.6977 13.5659C2.78477 13.628 2.88746 13.6644 2.99416 13.6712C3.10087 13.678 3.20733 13.6547 3.30153 13.6042L7.00096 11.6551L10.708 13.6042C10.79 13.6491 10.882 13.6728 10.9755 13.673C11.0958 13.6716 11.2129 13.6343 11.3119 13.5659C11.3988 13.5022 11.4663 13.4156 11.5068 13.3157C11.5473 13.2158 11.5592 13.1066 11.5412 13.0003L10.8227 8.87287L13.8266 5.95308C13.9033 5.87835 13.9577 5.7836 13.9833 5.67957C14.009 5.57554 14.005 5.4664 13.9718 5.36453Z" fill="currentColor"></path>
                    </g>
                    <defs>
                      <clipPath id="pv_icon_clip_pv_id_115">
                        <rect width="14" height="14" fill="white"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </div>
              </div>
            </div>
            <p class="font-normal text-lg text-600 mt-0 mb-0">Guest suite</p>
            <div class="flex flex-column md:flex-row flex-wrap md:justify-content-between mt-auto">
              <div class="flex gap-3">
                <p class="text-base flex align-items-center text-900 mt-0 mb-1">
                  <i class="pi pi-users mr-2"></i>
                  <span class="font-medium">2 Guests</span>
                </p>
                <p class="text-base flex align-items-center text-900 mt-0 mb-1">
                  <i class="pi pi-wifi mr-2"></i>
                  <span class="font-medium">1 Gigabit</span>
                </p>
                <p class="text-base flex align-items-center text-900 mt-0 mb-1">
                  <i class="pi pi-check-circle mr-2"></i>
                  <span class="font-medium">Verified</span>
                </p>
              </div>
              <div class="flex align-items-center">
                <p class="font-semibold text-4xl text-900 mt-0 mb-0">$983</p>
                <i class="pi pi-circle-fill text-xs text-700 mx-2"></i>
                <p class="flex align-items-center w-full text-lg text-700">9 nights</p>
              </div>
            </div>
          </div>
        </article>
        <!---->
        <article class="flex flex-column md:flex-row w-full gap-3 p-3 border-round border-1 surface-border mb-3">
          <div class="relative">
            <img src="https://blocks.primevue.org/images/blocks/hotels/h6.jpeg" alt="Image" class="border-round w-full h-full md:w-14rem md:h-14rem">
            <p class="absolute px-2 py-1 border-round-lg text-sm font-normal text-white mt-0 mb-0" style="background-color: rgba(255, 255, 255, 0.3); backdrop-filter: blur(10px); top: 3%; left: 3%;">Superhost</p>
          </div>
          <div class="flex flex-column w-full gap-3">
            <div class="flex w-full justify-content-between align-items-center">
              <p class="font-semibold text-lg mt-0 mb-0 mr-3">Home in Amsterdam</p>
              <div class="p-rating p-readonly" data-pc-name="rating" data-pc-section="root">
                <!---->
                <div class="p-rating-item p-rating-item-active" data-pc-section="item" data-p-active="true" data-p-focused="false">
                  <span class="p-hidden-accessible" data-pc-section="hiddeniteminputwrapper" data-p-hidden-accessible="true">
                    <input type="radio" readonly="" aria-label="1 star" data-pc-section="hiddeniteminput" value="1" name="pv_id_126">
                  </span>
                  <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-rating-icon" aria-hidden="true" data-pc-section="onicon">
                    <g clipPath="url(#pv_icon_clip_pv_id_116)">
                      <path d="M13.9718 5.36453C13.9398 5.26298 13.8798 5.17252 13.7986 5.10356C13.7175 5.0346 13.6186 4.98994 13.5132 4.97472L9.37043 4.37088L7.51307 0.617955C7.46021 0.529271 7.38522 0.455834 7.29545 0.404836C7.20568 0.353838 7.1042 0.327026 7.00096 0.327026C6.89771 0.327026 6.79624 0.353838 6.70647 0.404836C6.6167 0.455834 6.54171 0.529271 6.48885 0.617955L4.63149 4.37088L0.488746 4.97472C0.383363 4.98994 0.284416 5.0346 0.203286 5.10356C0.122157 5.17252 0.0621407 5.26298 0.03014 5.36453C-0.00402286 5.46571 -0.00924428 5.57442 0.0150645 5.67841C0.0393733 5.7824 0.0922457 5.87753 0.167722 5.95308L3.17924 8.87287L2.4684 13.0003C2.45038 13.1066 2.46229 13.2158 2.50278 13.3157C2.54328 13.4156 2.61077 13.5022 2.6977 13.5659C2.78477 13.628 2.88746 13.6644 2.99416 13.6712C3.10087 13.678 3.20733 13.6547 3.30153 13.6042L7.00096 11.6551L10.708 13.6042C10.79 13.6491 10.882 13.6728 10.9755 13.673C11.0958 13.6716 11.2129 13.6343 11.3119 13.5659C11.3988 13.5022 11.4663 13.4156 11.5068 13.3157C11.5473 13.2158 11.5592 13.1066 11.5412 13.0003L10.8227 8.87287L13.8266 5.95308C13.9033 5.87835 13.9577 5.7836 13.9833 5.67957C14.009 5.57554 14.005 5.4664 13.9718 5.36453Z" fill="currentColor"></path>
                    </g>
                    <defs>
                      <clipPath id="pv_icon_clip_pv_id_116">
                        <rect width="14" height="14" fill="white"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </div>
                <div class="p-rating-item p-rating-item-active" data-pc-section="item" data-p-active="true" data-p-focused="false">
                  <span class="p-hidden-accessible" data-pc-section="hiddeniteminputwrapper" data-p-hidden-accessible="true">
                    <input type="radio" readonly="" aria-label="2 stars" data-pc-section="hiddeniteminput" value="2" name="pv_id_126">
                  </span>
                  <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-rating-icon" aria-hidden="true" data-pc-section="onicon">
                    <g clipPath="url(#pv_icon_clip_pv_id_117)">
                      <path d="M13.9718 5.36453C13.9398 5.26298 13.8798 5.17252 13.7986 5.10356C13.7175 5.0346 13.6186 4.98994 13.5132 4.97472L9.37043 4.37088L7.51307 0.617955C7.46021 0.529271 7.38522 0.455834 7.29545 0.404836C7.20568 0.353838 7.1042 0.327026 7.00096 0.327026C6.89771 0.327026 6.79624 0.353838 6.70647 0.404836C6.6167 0.455834 6.54171 0.529271 6.48885 0.617955L4.63149 4.37088L0.488746 4.97472C0.383363 4.98994 0.284416 5.0346 0.203286 5.10356C0.122157 5.17252 0.0621407 5.26298 0.03014 5.36453C-0.00402286 5.46571 -0.00924428 5.57442 0.0150645 5.67841C0.0393733 5.7824 0.0922457 5.87753 0.167722 5.95308L3.17924 8.87287L2.4684 13.0003C2.45038 13.1066 2.46229 13.2158 2.50278 13.3157C2.54328 13.4156 2.61077 13.5022 2.6977 13.5659C2.78477 13.628 2.88746 13.6644 2.99416 13.6712C3.10087 13.678 3.20733 13.6547 3.30153 13.6042L7.00096 11.6551L10.708 13.6042C10.79 13.6491 10.882 13.6728 10.9755 13.673C11.0958 13.6716 11.2129 13.6343 11.3119 13.5659C11.3988 13.5022 11.4663 13.4156 11.5068 13.3157C11.5473 13.2158 11.5592 13.1066 11.5412 13.0003L10.8227 8.87287L13.8266 5.95308C13.9033 5.87835 13.9577 5.7836 13.9833 5.67957C14.009 5.57554 14.005 5.4664 13.9718 5.36453Z" fill="currentColor"></path>
                    </g>
                    <defs>
                      <clipPath id="pv_icon_clip_pv_id_117">
                        <rect width="14" height="14" fill="white"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </div>
                <div class="p-rating-item p-rating-item-active" data-pc-section="item" data-p-active="true" data-p-focused="false">
                  <span class="p-hidden-accessible" data-pc-section="hiddeniteminputwrapper" data-p-hidden-accessible="true">
                    <input type="radio" readonly="" aria-label="3 stars" data-pc-section="hiddeniteminput" value="3" name="pv_id_126">
                  </span>
                  <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-rating-icon" aria-hidden="true" data-pc-section="onicon">
                    <g clipPath="url(#pv_icon_clip_pv_id_118)">
                      <path d="M13.9718 5.36453C13.9398 5.26298 13.8798 5.17252 13.7986 5.10356C13.7175 5.0346 13.6186 4.98994 13.5132 4.97472L9.37043 4.37088L7.51307 0.617955C7.46021 0.529271 7.38522 0.455834 7.29545 0.404836C7.20568 0.353838 7.1042 0.327026 7.00096 0.327026C6.89771 0.327026 6.79624 0.353838 6.70647 0.404836C6.6167 0.455834 6.54171 0.529271 6.48885 0.617955L4.63149 4.37088L0.488746 4.97472C0.383363 4.98994 0.284416 5.0346 0.203286 5.10356C0.122157 5.17252 0.0621407 5.26298 0.03014 5.36453C-0.00402286 5.46571 -0.00924428 5.57442 0.0150645 5.67841C0.0393733 5.7824 0.0922457 5.87753 0.167722 5.95308L3.17924 8.87287L2.4684 13.0003C2.45038 13.1066 2.46229 13.2158 2.50278 13.3157C2.54328 13.4156 2.61077 13.5022 2.6977 13.5659C2.78477 13.628 2.88746 13.6644 2.99416 13.6712C3.10087 13.678 3.20733 13.6547 3.30153 13.6042L7.00096 11.6551L10.708 13.6042C10.79 13.6491 10.882 13.6728 10.9755 13.673C11.0958 13.6716 11.2129 13.6343 11.3119 13.5659C11.3988 13.5022 11.4663 13.4156 11.5068 13.3157C11.5473 13.2158 11.5592 13.1066 11.5412 13.0003L10.8227 8.87287L13.8266 5.95308C13.9033 5.87835 13.9577 5.7836 13.9833 5.67957C14.009 5.57554 14.005 5.4664 13.9718 5.36453Z" fill="currentColor"></path>
                    </g>
                    <defs>
                      <clipPath id="pv_icon_clip_pv_id_118">
                        <rect width="14" height="14" fill="white"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </div>
                <div class="p-rating-item p-rating-item-active" data-pc-section="item" data-p-active="true" data-p-focused="false">
                  <span class="p-hidden-accessible" data-pc-section="hiddeniteminputwrapper" data-p-hidden-accessible="true">
                    <input type="radio" readonly="" aria-label="4 stars" data-pc-section="hiddeniteminput" value="4" name="pv_id_126">
                  </span>
                  <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-rating-icon" aria-hidden="true" data-pc-section="onicon">
                    <g clipPath="url(#pv_icon_clip_pv_id_119)">
                      <path d="M13.9718 5.36453C13.9398 5.26298 13.8798 5.17252 13.7986 5.10356C13.7175 5.0346 13.6186 4.98994 13.5132 4.97472L9.37043 4.37088L7.51307 0.617955C7.46021 0.529271 7.38522 0.455834 7.29545 0.404836C7.20568 0.353838 7.1042 0.327026 7.00096 0.327026C6.89771 0.327026 6.79624 0.353838 6.70647 0.404836C6.6167 0.455834 6.54171 0.529271 6.48885 0.617955L4.63149 4.37088L0.488746 4.97472C0.383363 4.98994 0.284416 5.0346 0.203286 5.10356C0.122157 5.17252 0.0621407 5.26298 0.03014 5.36453C-0.00402286 5.46571 -0.00924428 5.57442 0.0150645 5.67841C0.0393733 5.7824 0.0922457 5.87753 0.167722 5.95308L3.17924 8.87287L2.4684 13.0003C2.45038 13.1066 2.46229 13.2158 2.50278 13.3157C2.54328 13.4156 2.61077 13.5022 2.6977 13.5659C2.78477 13.628 2.88746 13.6644 2.99416 13.6712C3.10087 13.678 3.20733 13.6547 3.30153 13.6042L7.00096 11.6551L10.708 13.6042C10.79 13.6491 10.882 13.6728 10.9755 13.673C11.0958 13.6716 11.2129 13.6343 11.3119 13.5659C11.3988 13.5022 11.4663 13.4156 11.5068 13.3157C11.5473 13.2158 11.5592 13.1066 11.5412 13.0003L10.8227 8.87287L13.8266 5.95308C13.9033 5.87835 13.9577 5.7836 13.9833 5.67957C14.009 5.57554 14.005 5.4664 13.9718 5.36453Z" fill="currentColor"></path>
                    </g>
                    <defs>
                      <clipPath id="pv_icon_clip_pv_id_119">
                        <rect width="14" height="14" fill="white"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </div>
                <div class="p-rating-item" data-pc-section="item" data-p-active="false" data-p-focused="false">
                  <span class="p-hidden-accessible" data-pc-section="hiddeniteminputwrapper" data-p-hidden-accessible="true">
                    <input type="radio" readonly="" aria-label="5 stars" data-pc-section="hiddeniteminput" value="5" name="pv_id_126">
                  </span>
                  <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-rating-icon" aria-hidden="true" data-pc-section="officon">
                    <g clipPath="url(#pv_icon_clip_pv_id_120)">
                      <path d="M10.9741 13.6721C10.8806 13.6719 10.7886 13.6483 10.7066 13.6033L7.00002 11.6545L3.29345 13.6033C3.19926 13.6539 3.09281 13.6771 2.98612 13.6703C2.87943 13.6636 2.77676 13.6271 2.6897 13.5651C2.60277 13.5014 2.53529 13.4147 2.4948 13.3148C2.45431 13.215 2.44241 13.1058 2.46042 12.9995L3.17881 8.87264L0.167699 5.95324C0.0922333 5.8777 0.039368 5.78258 0.0150625 5.67861C-0.00924303 5.57463 -0.00402231 5.46594 0.030136 5.36477C0.0621323 5.26323 0.122141 5.17278 0.203259 5.10383C0.284377 5.03488 0.383311 4.99023 0.488681 4.97501L4.63087 4.37126L6.48797 0.618832C6.54083 0.530159 6.61581 0.456732 6.70556 0.405741C6.79532 0.35475 6.89678 0.327942 7.00002 0.327942C7.10325 0.327942 7.20471 0.35475 7.29447 0.405741C7.38422 0.456732 7.4592 0.530159 7.51206 0.618832L9.36916 4.37126L13.5114 4.97501C13.6167 4.99023 13.7157 5.03488 13.7968 5.10383C13.8779 5.17278 13.9379 5.26323 13.9699 5.36477C14.0041 5.46594 14.0093 5.57463 13.985 5.67861C13.9607 5.78258 13.9078 5.8777 13.8323 5.95324L10.8212 8.87264L11.532 12.9995C11.55 13.1058 11.5381 13.215 11.4976 13.3148C11.4571 13.4147 11.3896 13.5014 11.3027 13.5651C11.2059 13.632 11.0917 13.6692 10.9741 13.6721ZM7.00002 10.4393C7.09251 10.4404 7.18371 10.4613 7.2675 10.5005L10.2098 12.029L9.65193 8.75036C9.6368 8.6584 9.64343 8.56418 9.6713 8.47526C9.69918 8.38633 9.74751 8.30518 9.81242 8.23832L12.1969 5.94559L8.90298 5.45648C8.81188 5.44198 8.72555 5.406 8.65113 5.35152C8.57671 5.29703 8.51633 5.2256 8.475 5.14314L7.00002 2.1626L5.52503 5.15078C5.4837 5.23324 5.42332 5.30467 5.3489 5.35916C5.27448 5.41365 5.18815 5.44963 5.09705 5.46412L1.80318 5.94559L4.18761 8.23832C4.25252 8.30518 4.30085 8.38633 4.32873 8.47526C4.3566 8.56418 4.36323 8.6584 4.3481 8.75036L3.7902 12.0519L6.73253 10.5234C6.81451 10.4762 6.9058 10.4475 7.00002 10.4393Z" fill="currentColor"></path>
                    </g>
                    <defs>
                      <clipPath id="pv_icon_clip_pv_id_120">
                        <rect width="14" height="14" fill="white"></rect>
                      </clipPath>
                    </defs>
                  </svg>
                </div>
              </div>
            </div>
            <p class="font-normal text-lg text-600 mt-0 mb-0">Large comfortable room in Sarphatistraat</p>
            <div class="flex flex-column md:flex-row flex-wrap md:justify-content-between mt-auto">
              <div class="flex gap-3">
                <p class="text-base flex align-items-center text-900 mt-0 mb-1">
                  <i class="pi pi-users mr-2"></i>
                  <span class="font-medium">2 Guests</span>
                </p>
                <p class="text-base flex align-items-center text-900 mt-0 mb-1">
                  <i class="pi pi-wifi mr-2"></i>
                  <span class="font-medium">200 Megabits</span>
                </p>
                <p class="text-base flex align-items-center text-900 mt-0 mb-1">
                  <i class="pi pi-check-circle mr-2"></i>
                  <span class="font-medium">Verified</span>
                </p>
              </div>
              <div class="flex align-items-center">
                <p class="font-semibold text-4xl text-900 mt-0 mb-0">$514</p>
                <i class="pi pi-circle-fill text-xs text-700 mx-2"></i>
                <p class="flex align-items-center w-full text-lg text-700">9 nights</p>
              </div>
            </div>
          </div>
        </article>
        <!---->
        <!---->
      </div>
    </div>
    <nav data-pc-section="paginatorwrapper" class="p-paginator-bottom">
      <div class="p-paginator p-component" data-pc-name="paginator" data-pc-section="root" pv_id_128="">
        <!---->
        <span class="p-paginator-current" data-pc-section="current" aria-live="polite">Showing 1 to 3 of 3 entries</span>
        <button class="p-paginator-first p-paginator-element p-link p-disabled" type="button" data-pc-section="firstpagebutton" aria-label="First Page" disabled="" data-pd-ripple="true">
          <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-paginator-icon" aria-hidden="true" data-pc-section="firstpageicon">
            <path fill-rule="evenodd" clip-rule="evenodd" d="M5.71602 11.164C5.80782 11.2021 5.9063 11.2215 6.00569 11.221C6.20216 11.2301 6.39427 11.1612 6.54025 11.0294C6.68191 10.8875 6.76148 10.6953 6.76148 10.4948C6.76148 10.2943 6.68191 10.1021 6.54025 9.96024L3.51441 6.9344L6.54025 3.90855C6.624 3.76126 6.65587 3.59011 6.63076 3.42254C6.60564 3.25498 6.525 3.10069 6.40175 2.98442C6.2785 2.86815 6.11978 2.79662 5.95104 2.7813C5.78229 2.76598 5.61329 2.80776 5.47112 2.89994L1.97123 6.39983C1.82957 6.54167 1.75 6.73393 1.75 6.9344C1.75 7.13486 1.82957 7.32712 1.97123 7.46896L5.47112 10.9991C5.54096 11.0698 5.62422 11.1259 5.71602 11.164ZM11.0488 10.9689C11.1775 11.1156 11.3585 11.2061 11.5531 11.221C11.7477 11.2061 11.9288 11.1156 12.0574 10.9689C12.1815 10.8302 12.25 10.6506 12.25 10.4645C12.25 10.2785 12.1815 10.0989 12.0574 9.96024L9.03158 6.93439L12.0574 3.90855C12.1248 3.76739 12.1468 3.60881 12.1204 3.45463C12.0939 3.30045 12.0203 3.15826 11.9097 3.04765C11.7991 2.93703 11.6569 2.86343 11.5027 2.83698C11.3486 2.81053 11.19 2.83252 11.0488 2.89994L7.51865 6.36957C7.37699 6.51141 7.29742 6.70367 7.29742 6.90414C7.29742 7.1046 7.37699 7.29686 7.51865 7.4387L11.0488 10.9689Z" fill="currentColor"></path>
          </svg>
          <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
        </button>
        <button class="p-paginator-prev p-paginator-element p-link p-disabled" type="button" data-pc-section="previouspagebutton" aria-label="Previous Page" disabled="" data-pd-ripple="true">
          <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-paginator-icon" aria-hidden="true" data-pc-section="previouspageicon">
            <path d="M8.75 11.185C8.65146 11.1854 8.55381 11.1662 8.4628 11.1284C8.37179 11.0906 8.28924 11.0351 8.22 10.965L4.72 7.46496C4.57955 7.32433 4.50066 7.13371 4.50066 6.93496C4.50066 6.73621 4.57955 6.54558 4.72 6.40496L8.22 2.93496C8.36095 2.84357 8.52851 2.80215 8.69582 2.81733C8.86312 2.83252 9.02048 2.90344 9.14268 3.01872C9.26487 3.134 9.34483 3.28696 9.36973 3.4531C9.39463 3.61924 9.36303 3.78892 9.28 3.93496L6.28 6.93496L9.28 9.93496C9.42045 10.0756 9.49934 10.2662 9.49934 10.465C9.49934 10.6637 9.42045 10.8543 9.28 10.995C9.13526 11.1257 8.9448 11.1939 8.75 11.185Z" fill="currentColor"></path>
          </svg>
          <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
        </button>
        <span class="p-paginator-pages" data-pc-section="pages">
          <button class="p-paginator-page p-paginator-element p-link p-highlight" type="button" aria-label="1" aria-current="page" data-pc-section="pagebutton" data-p-highlight="true" data-pd-ripple="true">1 <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
          </button>
        </span>
        <button class="p-paginator-next p-paginator-element p-link p-disabled" type="button" data-pc-section="nextpagebutton" aria-label="Next Page" disabled="" data-pd-ripple="true">
          <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-paginator-icon" aria-hidden="true" data-pc-section="nextpageicon">
            <path d="M5.25 11.1728C5.14929 11.1694 5.05033 11.1455 4.9592 11.1025C4.86806 11.0595 4.78666 10.9984 4.72 10.9228C4.57955 10.7822 4.50066 10.5916 4.50066 10.3928C4.50066 10.1941 4.57955 10.0035 4.72 9.86283L7.72 6.86283L4.72 3.86283C4.66067 3.71882 4.64765 3.55991 4.68275 3.40816C4.71785 3.25642 4.79932 3.11936 4.91585 3.01602C5.03238 2.91268 5.17819 2.84819 5.33305 2.83149C5.4879 2.81479 5.64411 2.84671 5.78 2.92283L9.28 6.42283C9.42045 6.56346 9.49934 6.75408 9.49934 6.95283C9.49934 7.15158 9.42045 7.34221 9.28 7.48283L5.78 10.9228C5.71333 10.9984 5.63193 11.0595 5.5408 11.1025C5.44966 11.1455 5.35071 11.1694 5.25 11.1728Z" fill="currentColor"></path>
          </svg>
          <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
        </button>
        <button class="p-paginator-last p-paginator-element p-link p-disabled" type="button" data-pc-section="lastpagebutton" aria-label="Last Page" disabled="" data-pd-ripple="true">
          <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-paginator-icon" aria-hidden="true" data-pc-section="lastpageicon">
            <path fill-rule="evenodd" clip-rule="evenodd" d="M7.68757 11.1451C7.7791 11.1831 7.8773 11.2024 7.9764 11.2019C8.07769 11.1985 8.17721 11.1745 8.26886 11.1312C8.36052 11.088 8.44238 11.0265 8.50943 10.9505L12.0294 7.49085C12.1707 7.34942 12.25 7.15771 12.25 6.95782C12.25 6.75794 12.1707 6.56622 12.0294 6.42479L8.50943 2.90479C8.37014 2.82159 8.20774 2.78551 8.04633 2.80192C7.88491 2.81833 7.73309 2.88635 7.6134 2.99588C7.4937 3.10541 7.41252 3.25061 7.38189 3.40994C7.35126 3.56927 7.37282 3.73423 7.44337 3.88033L10.4605 6.89748L7.44337 9.91463C7.30212 10.0561 7.22278 10.2478 7.22278 10.4477C7.22278 10.6475 7.30212 10.8393 7.44337 10.9807C7.51301 11.0512 7.59603 11.1071 7.68757 11.1451ZM1.94207 10.9505C2.07037 11.0968 2.25089 11.1871 2.44493 11.2019C2.63898 11.1871 2.81949 11.0968 2.94779 10.9505L6.46779 7.49085C6.60905 7.34942 6.68839 7.15771 6.68839 6.95782C6.68839 6.75793 6.60905 6.56622 6.46779 6.42479L2.94779 2.90479C2.80704 2.83757 2.6489 2.81563 2.49517 2.84201C2.34143 2.86839 2.19965 2.94178 2.08936 3.05207C1.97906 3.16237 1.90567 3.30415 1.8793 3.45788C1.85292 3.61162 1.87485 3.76975 1.94207 3.9105L4.95922 6.92765L1.94207 9.9448C1.81838 10.0831 1.75 10.2621 1.75 10.4477C1.75 10.6332 1.81838 10.8122 1.94207 10.9505Z" fill="currentColor"></path>
          </svg>
          <span role="presentation" aria-hidden="true" data-p-ink="true" data-p-ink-active="false" class="p-ink" data-pc-name="ripple" data-pc-section="root"></span>
        </button>
        <div class="p-dropdown p-component p-inputwrapper p-inputwrapper-filled p-paginator-rpp-options" data-pc-name="dropdown" data-pc-section="rowperpagedropdown" id="pv_id_127">
          <span class="p-dropdown-label p-inputtext" tabindex="0" role="combobox" aria-label="Rows per page" aria-haspopup="listbox" aria-expanded="false" aria-controls="pv_id_127_list" aria-disabled="false" data-pc-section="input">10</span>
          <!---->
          <div class="p-dropdown-trigger" data-pc-section="trigger">
            <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg" class="p-icon p-dropdown-trigger-icon" aria-hidden="true" data-pc-section="dropdownicon">
              <path d="M7.01744 10.398C6.91269 10.3985 6.8089 10.378 6.71215 10.3379C6.61541 10.2977 6.52766 10.2386 6.45405 10.1641L1.13907 4.84913C1.03306 4.69404 0.985221 4.5065 1.00399 4.31958C1.02276 4.13266 1.10693 3.95838 1.24166 3.82747C1.37639 3.69655 1.55301 3.61742 1.74039 3.60402C1.92777 3.59062 2.11386 3.64382 2.26584 3.75424L7.01744 8.47394L11.769 3.75424C11.9189 3.65709 12.097 3.61306 12.2748 3.62921C12.4527 3.64535 12.6199 3.72073 12.7498 3.84328C12.8797 3.96582 12.9647 4.12842 12.9912 4.30502C13.0177 4.48162 12.9841 4.662 12.8958 4.81724L7.58083 10.1322C7.50996 10.2125 7.42344 10.2775 7.32656 10.3232C7.22968 10.3689 7.12449 10.3944 7.01744 10.398Z" fill="currentColor"></path>
            </svg>
          </div>
        </div>
        <!---->
      </div>
    </nav>
    <!---->
  </div>
</section>
  </NuxtLayout>
</template>

<script setup lang="ts">
  import { storeToRefs } from "pinia";
  import { useToast } from "primevue/usetoast";

  definePageMeta({
      middleware: ["not-auth"]
  });
  const resetDialog = ref(false)
  const toast = useToast();
  const isLoading = ref(false);
</script>

<style>

img.logo {
  width: 150px !important;
  height: auto !important;
  margin: auto !important;
}
.brand-logo {
  text-align: center;
}
</style>