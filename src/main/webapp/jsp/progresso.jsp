<style type="text/css">
		
	.progress {
		  position: relative;
		  height: 4px;
		  display: block;
		  width: 100%;
		  background-color: #acece6;
		  -webkit-border-radius: 2px;
		  -moz-border-radius: 2px;
		  border-radius: 2px;
		  background-clip: padding-box;
		  margin: 0.5rem 0 1rem 0;
		  margin: 0px !important;
		  overflow: hidden;
		}
	/*COR DA BARRA*/
	.progress .indeterminate {
	  background-color: #f55858;
	}
	
	.progress .indeterminate:before {
		content: '';
		position: absolute;
		background-color: inherit;
		top: 0;
		left: 0;
		bottom: 0;
		will-change: left, right;
		-webkit-animation: indeterminate 2.1s cubic-bezier(0.65, 0.815, 0.735, 0.395) infinite;
		-moz-animation: indeterminate 2.1s cubic-bezier(0.65, 0.815, 0.735, 0.395) infinite;
		-ms-animation: indeterminate 2.1s cubic-bezier(0.65, 0.815, 0.735, 0.395) infinite;
		-o-animation: indeterminate 2.1s cubic-bezier(0.65, 0.815, 0.735, 0.395) infinite;
		animation: indeterminate 2.1s cubic-bezier(0.65, 0.815, 0.735, 0.395) infinite;
	}
	
	.progress .indeterminate:after {
	  content: '';
	  position: absolute;
	  background-color: inherit;
	  top: 0;
	  left: 0;
	  bottom: 0;
	  will-change: left, right;
	  -webkit-animation: indeterminate-short 2.1s cubic-bezier(0.165, 0.84, 0.44, 1) infinite;
	  -moz-animation: indeterminate-short 2.1s cubic-bezier(0.165, 0.84, 0.44, 1) infinite;
	  -ms-animation: indeterminate-short 2.1s cubic-bezier(0.165, 0.84, 0.44, 1) infinite;
	  -o-animation: indeterminate-short 2.1s cubic-bezier(0.165, 0.84, 0.44, 1) infinite;
	  animation: indeterminate-short 2.1s cubic-bezier(0.165, 0.84, 0.44, 1) infinite;
	  -webkit-animation-delay: 1.15s;
	  -moz-animation-delay: 1.15s;
	  -ms-animation-delay: 1.15s;
	  -o-animation-delay: 1.15s;
	  animation-delay: 1.15s;
	  
	}
	
	@-webkit-keyframes indeterminate {
	  0% {
	    left: -35%;
	    right: 100%; }
	
	  60% {
	    left: 100%;
	    right: -90%; }
	
	  100% {
	    left: 100%;
	    right: -90%; } }
	
	@-moz-keyframes indeterminate {
	  0% {
	    left: -35%;
	    right: 100%; }
	
	  60% {
	    left: 100%;
	    right: -90%; }
	
	  100% {
	    left: 100%;
	    right: -90%; } }
	
	@keyframes indeterminate {
	  0% {
	    left: -35%;
	    right: 100%; }
	
	  60% {
	    left: 100%;
	    right: -90%; }
	
	  100% {
	    left: 100%;
	    right: -90%; } }
	
	@-webkit-keyframes indeterminate-short {
	  0% {
	    left: -200%;
	    right: 100%; }
	
	  60% {
	    left: 107%;
	    right: -8%; }
	
	  100% {
	    left: 107%;
	    right: -8%; } }
	
	@-moz-keyframes indeterminate-short {
	  0% {
	    left: -200%;
	    right: 100%; }
	
	  60% {
	    left: 107%;
	    right: -8%; }
	
	  100% {
	    left: 107%;
	    right: -8%; } }
	
	@keyframes indeterminate-short {
	  0% {
	    left: -200%;
	    right: 100%; }
	
	  60% {
	    left: 107%;
	    right: -8%; }
	
	  100% {
	    left: 107%;
	    right: -8%; } }
</style>
	<div class="progress">
	<div class="indeterminate"></div>
</div>