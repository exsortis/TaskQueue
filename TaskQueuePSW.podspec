#
# Be sure to run `pod lib lint TaskQueue.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "TaskQueuePSW"
  s.version          = "1.2.0"
  s.summary          = "Task management made easy, bounce tasks between main thread and background threads like a pro"
  s.description      = <<-DESC
	TaskQueue is a Swift library which allows you to schedule tasks once and then let the queue execute them in a synchronous matter. The great thing about TaskQueue is that you get to decide on which GCD queue each of your tasks should execute beforehand and leave TaskQueue to do switching of queues as it goes.

	Even if your tasks are asynchronous like fetching location, downloading files, etc. TaskQueue will wait until they are finished before going on with the next task.
                       DESC
  s.homepage         = "https://github.com/paulyhedral/TaskQueue"
  s.screenshots      = "https://raw.githubusercontent.com/paulyhedral/TaskQueue/master/etc/readme_schema.png"
  s.license          = 'MIT'
  s.author           = { "Marin Todorov" => "touch-code-magazine@underplot.com", "Paul Schifferer" => "paul@schifferers.net" }
  s.source           = { :git => "https://github.com/paulyhedral/TaskQueue.git", :tag => s.version.to_s }
  s.social_media_url = 'https://wanderingmonster.org'

  s.ios.deployment_target   = '8.0'
  s.tvos.deployment_target   = '9.2'
  s.osx.deployment_target   = '10.10'
  s.requires_arc = true

  s.source_files = 'TaskQueue'
  s.pod_target_xcconfig = { 'SWIFT_WHOLE_MODULE_OPTIMIZATION' => 'YES',
                            'APPLICATION_EXTENSION_API_ONLY' => 'YES',
                                'SWIFT_VERSION' => '4.2' }
end
