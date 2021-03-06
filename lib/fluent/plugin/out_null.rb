#
# Fluentd
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#

require 'fluent/output'

module Fluent
  class NullOutput < Output
    Plugin.register_output('null', self)

    def initialize
      super
    end

    def configure(conf)
      super
    end

    def start
    end

    def shutdown
    end

    def emit(tag, es, chain)
      chain.next
    end
  end
end
