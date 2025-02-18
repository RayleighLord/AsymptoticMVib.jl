module AsymptoticMVib

using DispatchDoctor: @stable

@stable default_mode="error" begin # Change to disable in production
    """
        add(x, y)

    Add two numbers together.

    # Example of usage

    ```julia
    julia> add(1, 2)
    3
    ```
    """
    add(x, y) = x + y
end

export add

end
