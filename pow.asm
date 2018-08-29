.text
.global main
main:
    movq %rsp, %rbp #for correct debugging
pow:
    movq $0, %rsi #p - степень, тестовый ввод
    movq $0, %rbx
    movq $2, %rdi #x - число, тестовый ввод
    cmp $0, %rsi
    je p_zero
    cmp $0, %rdi
    je x_zero
    
p_zero:
    movq $1, %rax
    retq
x_zero:
    movq $0, %rax
    retq
    
    xorq %rax, %rax
    ret
