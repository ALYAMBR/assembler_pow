.text
.global main
main:
    movq %rsp, %rbp #for correct debugging
pow:
    cmp $0, %rsi
    je p_zero
    cmp $0, %rdi
    je x_zero
    movq %rdi, %rax
    jmp pow_cycle
finish:
    retq
pow_cycle:
    sub $1, %rsi
    cmp $0, %rsi
    je finish
    imul %rdi, %rax
    jmp pow_cycle
p_zero:
    movq $1, %rax
    retq
x_zero:
    movq $0, %rax
    retq
    
    xorq %rax, %rax
    ret
