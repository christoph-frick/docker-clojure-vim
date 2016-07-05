{:user
 {:plugins [[lein-plz "0.3.3" :exclusions [org.clojure/clojure]]
            [lein-try "0.4.3" :exclusions [org.clojure/clojure]]
            [lein-kibit "0.1.2" :exclusions [org.clojure/clojure]]
            [cider/cider-nrepl "0.12.0" :exclusions [org.clojure/clojure]]
            [com.jakemccrary/lein-test-refresh "0.16.0" :exclusions [org.clojure/clojure]]
            [lein-ancient "0.6.10"]]
  :test-refresh {:notify-command ["terminal-notifier" "-title" "Tests" "-message"]} 
  :dependencies [[slamhound "1.5.5" :exclusions [org.clojure/clojure]]
                 #_[jonase/eastwood "0.2.3" :exclusions [org.clojure/clojure]]
                 [cljfmt "0.5.3" :exclusions [org.clojure/clojure]]
                 [org.clojure/tools.namespace "0.2.11" :exclusions [org.clojure/clojure]]  
                 ]}}
