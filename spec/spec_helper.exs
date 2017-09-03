ESpec.configure fn(config) ->
  config.before fn(tags) ->
    {:shared, hello: :world, tags: tags}
  end

  config.finally fn(_shared) ->
    :ok
  end
end

Code.require_file("spec/phoenix_helper.exs")
Code.require_file("spec/support/factory.ex")
