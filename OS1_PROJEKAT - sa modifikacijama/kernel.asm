
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	e6813103          	ld	sp,-408(sp) # 8000ce68 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1c8070ef          	jal	ra,800071e4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:

.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    j internalHandling
    80001000:	0280006f          	j	80001028 <internalHandling>
    j timerHandling
    80001004:	1340006f          	j	80001138 <timerHandling>
	...
    .skip 28
    j consoleHandling
    80001024:	2240006f          	j	80001248 <consoleHandling>

0000000080001028 <internalHandling>:


internalHandling:
    addi sp, sp, -256
    80001028:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    8000102c:	00013023          	sd	zero,0(sp)
    80001030:	00113423          	sd	ra,8(sp)
    80001034:	00213823          	sd	sp,16(sp)
    80001038:	00313c23          	sd	gp,24(sp)
    8000103c:	02413023          	sd	tp,32(sp)
    80001040:	02513423          	sd	t0,40(sp)
    80001044:	02613823          	sd	t1,48(sp)
    80001048:	02713c23          	sd	t2,56(sp)
    8000104c:	04813023          	sd	s0,64(sp)
    80001050:	04913423          	sd	s1,72(sp)
    80001054:	04a13823          	sd	a0,80(sp)
    80001058:	04b13c23          	sd	a1,88(sp)
    8000105c:	06c13023          	sd	a2,96(sp)
    80001060:	06d13423          	sd	a3,104(sp)
    80001064:	06e13823          	sd	a4,112(sp)
    80001068:	06f13c23          	sd	a5,120(sp)
    8000106c:	09013023          	sd	a6,128(sp)
    80001070:	09113423          	sd	a7,136(sp)
    80001074:	09213823          	sd	s2,144(sp)
    80001078:	09313c23          	sd	s3,152(sp)
    8000107c:	0b413023          	sd	s4,160(sp)
    80001080:	0b513423          	sd	s5,168(sp)
    80001084:	0b613823          	sd	s6,176(sp)
    80001088:	0b713c23          	sd	s7,184(sp)
    8000108c:	0d813023          	sd	s8,192(sp)
    80001090:	0d913423          	sd	s9,200(sp)
    80001094:	0da13823          	sd	s10,208(sp)
    80001098:	0db13c23          	sd	s11,216(sp)
    8000109c:	0fc13023          	sd	t3,224(sp)
    800010a0:	0fd13423          	sd	t4,232(sp)
    800010a4:	0fe13823          	sd	t5,240(sp)
    800010a8:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    800010ac:	23c010ef          	jal	ra,800022e8 <_ZN5Riscv20handleSupervisorTrapEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800010b0:	00013003          	ld	zero,0(sp)
    800010b4:	00813083          	ld	ra,8(sp)
    800010b8:	01013103          	ld	sp,16(sp)
    800010bc:	01813183          	ld	gp,24(sp)
    800010c0:	02013203          	ld	tp,32(sp)
    800010c4:	02813283          	ld	t0,40(sp)
    800010c8:	03013303          	ld	t1,48(sp)
    800010cc:	03813383          	ld	t2,56(sp)
    800010d0:	04013403          	ld	s0,64(sp)
    800010d4:	04813483          	ld	s1,72(sp)
    800010d8:	05013503          	ld	a0,80(sp)
    800010dc:	05813583          	ld	a1,88(sp)
    800010e0:	06013603          	ld	a2,96(sp)
    800010e4:	06813683          	ld	a3,104(sp)
    800010e8:	07013703          	ld	a4,112(sp)
    800010ec:	07813783          	ld	a5,120(sp)
    800010f0:	08013803          	ld	a6,128(sp)
    800010f4:	08813883          	ld	a7,136(sp)
    800010f8:	09013903          	ld	s2,144(sp)
    800010fc:	09813983          	ld	s3,152(sp)
    80001100:	0a013a03          	ld	s4,160(sp)
    80001104:	0a813a83          	ld	s5,168(sp)
    80001108:	0b013b03          	ld	s6,176(sp)
    8000110c:	0b813b83          	ld	s7,184(sp)
    80001110:	0c013c03          	ld	s8,192(sp)
    80001114:	0c813c83          	ld	s9,200(sp)
    80001118:	0d013d03          	ld	s10,208(sp)
    8000111c:	0d813d83          	ld	s11,216(sp)
    80001120:	0e013e03          	ld	t3,224(sp)
    80001124:	0e813e83          	ld	t4,232(sp)
    80001128:	0f013f03          	ld	t5,240(sp)
    8000112c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001130:	10010113          	addi	sp,sp,256

    sret
    80001134:	10200073          	sret

0000000080001138 <timerHandling>:

timerHandling:
    addi sp, sp, -256
    80001138:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    8000113c:	00013023          	sd	zero,0(sp)
    80001140:	00113423          	sd	ra,8(sp)
    80001144:	00213823          	sd	sp,16(sp)
    80001148:	00313c23          	sd	gp,24(sp)
    8000114c:	02413023          	sd	tp,32(sp)
    80001150:	02513423          	sd	t0,40(sp)
    80001154:	02613823          	sd	t1,48(sp)
    80001158:	02713c23          	sd	t2,56(sp)
    8000115c:	04813023          	sd	s0,64(sp)
    80001160:	04913423          	sd	s1,72(sp)
    80001164:	04a13823          	sd	a0,80(sp)
    80001168:	04b13c23          	sd	a1,88(sp)
    8000116c:	06c13023          	sd	a2,96(sp)
    80001170:	06d13423          	sd	a3,104(sp)
    80001174:	06e13823          	sd	a4,112(sp)
    80001178:	06f13c23          	sd	a5,120(sp)
    8000117c:	09013023          	sd	a6,128(sp)
    80001180:	09113423          	sd	a7,136(sp)
    80001184:	09213823          	sd	s2,144(sp)
    80001188:	09313c23          	sd	s3,152(sp)
    8000118c:	0b413023          	sd	s4,160(sp)
    80001190:	0b513423          	sd	s5,168(sp)
    80001194:	0b613823          	sd	s6,176(sp)
    80001198:	0b713c23          	sd	s7,184(sp)
    8000119c:	0d813023          	sd	s8,192(sp)
    800011a0:	0d913423          	sd	s9,200(sp)
    800011a4:	0da13823          	sd	s10,208(sp)
    800011a8:	0db13c23          	sd	s11,216(sp)
    800011ac:	0fc13023          	sd	t3,224(sp)
    800011b0:	0fd13423          	sd	t4,232(sp)
    800011b4:	0fe13823          	sd	t5,240(sp)
    800011b8:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv15handleTimerTrapEv
    800011bc:	440010ef          	jal	ra,800025fc <_ZN5Riscv15handleTimerTrapEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800011c0:	00013003          	ld	zero,0(sp)
    800011c4:	00813083          	ld	ra,8(sp)
    800011c8:	01013103          	ld	sp,16(sp)
    800011cc:	01813183          	ld	gp,24(sp)
    800011d0:	02013203          	ld	tp,32(sp)
    800011d4:	02813283          	ld	t0,40(sp)
    800011d8:	03013303          	ld	t1,48(sp)
    800011dc:	03813383          	ld	t2,56(sp)
    800011e0:	04013403          	ld	s0,64(sp)
    800011e4:	04813483          	ld	s1,72(sp)
    800011e8:	05013503          	ld	a0,80(sp)
    800011ec:	05813583          	ld	a1,88(sp)
    800011f0:	06013603          	ld	a2,96(sp)
    800011f4:	06813683          	ld	a3,104(sp)
    800011f8:	07013703          	ld	a4,112(sp)
    800011fc:	07813783          	ld	a5,120(sp)
    80001200:	08013803          	ld	a6,128(sp)
    80001204:	08813883          	ld	a7,136(sp)
    80001208:	09013903          	ld	s2,144(sp)
    8000120c:	09813983          	ld	s3,152(sp)
    80001210:	0a013a03          	ld	s4,160(sp)
    80001214:	0a813a83          	ld	s5,168(sp)
    80001218:	0b013b03          	ld	s6,176(sp)
    8000121c:	0b813b83          	ld	s7,184(sp)
    80001220:	0c013c03          	ld	s8,192(sp)
    80001224:	0c813c83          	ld	s9,200(sp)
    80001228:	0d013d03          	ld	s10,208(sp)
    8000122c:	0d813d83          	ld	s11,216(sp)
    80001230:	0e013e03          	ld	t3,224(sp)
    80001234:	0e813e83          	ld	t4,232(sp)
    80001238:	0f013f03          	ld	t5,240(sp)
    8000123c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001240:	10010113          	addi	sp,sp,256

    sret
    80001244:	10200073          	sret

0000000080001248 <consoleHandling>:


consoleHandling:
    addi sp, sp, -256
    80001248:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    8000124c:	00013023          	sd	zero,0(sp)
    80001250:	00113423          	sd	ra,8(sp)
    80001254:	00213823          	sd	sp,16(sp)
    80001258:	00313c23          	sd	gp,24(sp)
    8000125c:	02413023          	sd	tp,32(sp)
    80001260:	02513423          	sd	t0,40(sp)
    80001264:	02613823          	sd	t1,48(sp)
    80001268:	02713c23          	sd	t2,56(sp)
    8000126c:	04813023          	sd	s0,64(sp)
    80001270:	04913423          	sd	s1,72(sp)
    80001274:	04a13823          	sd	a0,80(sp)
    80001278:	04b13c23          	sd	a1,88(sp)
    8000127c:	06c13023          	sd	a2,96(sp)
    80001280:	06d13423          	sd	a3,104(sp)
    80001284:	06e13823          	sd	a4,112(sp)
    80001288:	06f13c23          	sd	a5,120(sp)
    8000128c:	09013023          	sd	a6,128(sp)
    80001290:	09113423          	sd	a7,136(sp)
    80001294:	09213823          	sd	s2,144(sp)
    80001298:	09313c23          	sd	s3,152(sp)
    8000129c:	0b413023          	sd	s4,160(sp)
    800012a0:	0b513423          	sd	s5,168(sp)
    800012a4:	0b613823          	sd	s6,176(sp)
    800012a8:	0b713c23          	sd	s7,184(sp)
    800012ac:	0d813023          	sd	s8,192(sp)
    800012b0:	0d913423          	sd	s9,200(sp)
    800012b4:	0da13823          	sd	s10,208(sp)
    800012b8:	0db13c23          	sd	s11,216(sp)
    800012bc:	0fc13023          	sd	t3,224(sp)
    800012c0:	0fd13423          	sd	t4,232(sp)
    800012c4:	0fe13823          	sd	t5,240(sp)
    800012c8:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv17handleConsoleTrapEv
    800012cc:	350010ef          	jal	ra,8000261c <_ZN5Riscv17handleConsoleTrapEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800012d0:	00013003          	ld	zero,0(sp)
    800012d4:	00813083          	ld	ra,8(sp)
    800012d8:	01013103          	ld	sp,16(sp)
    800012dc:	01813183          	ld	gp,24(sp)
    800012e0:	02013203          	ld	tp,32(sp)
    800012e4:	02813283          	ld	t0,40(sp)
    800012e8:	03013303          	ld	t1,48(sp)
    800012ec:	03813383          	ld	t2,56(sp)
    800012f0:	04013403          	ld	s0,64(sp)
    800012f4:	04813483          	ld	s1,72(sp)
    800012f8:	05013503          	ld	a0,80(sp)
    800012fc:	05813583          	ld	a1,88(sp)
    80001300:	06013603          	ld	a2,96(sp)
    80001304:	06813683          	ld	a3,104(sp)
    80001308:	07013703          	ld	a4,112(sp)
    8000130c:	07813783          	ld	a5,120(sp)
    80001310:	08013803          	ld	a6,128(sp)
    80001314:	08813883          	ld	a7,136(sp)
    80001318:	09013903          	ld	s2,144(sp)
    8000131c:	09813983          	ld	s3,152(sp)
    80001320:	0a013a03          	ld	s4,160(sp)
    80001324:	0a813a83          	ld	s5,168(sp)
    80001328:	0b013b03          	ld	s6,176(sp)
    8000132c:	0b813b83          	ld	s7,184(sp)
    80001330:	0c013c03          	ld	s8,192(sp)
    80001334:	0c813c83          	ld	s9,200(sp)
    80001338:	0d013d03          	ld	s10,208(sp)
    8000133c:	0d813d83          	ld	s11,216(sp)
    80001340:	0e013e03          	ld	t3,224(sp)
    80001344:	0e813e83          	ld	t4,232(sp)
    80001348:	0f013f03          	ld	t5,240(sp)
    8000134c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001350:	10010113          	addi	sp,sp,256

    sret
    80001354:	10200073          	sret

0000000080001358 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001358:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    8000135c:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001360:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001364:	0085b103          	ld	sp,8(a1)

    80001368:	00008067          	ret

000000008000136c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000136c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001370:	00b29a63          	bne	t0,a1,80001384 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001374:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001378:	fe029ae3          	bnez	t0,8000136c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000137c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001380:	00008067          	ret

0000000080001384 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001384:	00100513          	li	a0,1
    80001388:	00008067          	ret

000000008000138c <_Z9mem_allocm>:
#include "../h/syscall_c.h"
#include "../h/riscv.h"

void *mem_alloc(size_t size_mem) {
    8000138c:	ff010113          	addi	sp,sp,-16
    80001390:	00813423          	sd	s0,8(sp)
    80001394:	01010413          	addi	s0,sp,16
    uint64 b;

    size_t mod = size_mem % MEM_BLOCK_SIZE;
    80001398:	03f57793          	andi	a5,a0,63
    size_mem = size_mem / MEM_BLOCK_SIZE + (mod ? 1 : 0);
    8000139c:	00655513          	srli	a0,a0,0x6
    800013a0:	00078463          	beqz	a5,800013a8 <_Z9mem_allocm+0x1c>
    800013a4:	00100793          	li	a5,1
    800013a8:	00f50533          	add	a0,a0,a5
    size_t opCode = 0x01;

    __asm__ volatile ("mv a1, %[size_mem]":: [size_mem] "r"(size_mem));
    800013ac:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0":: "r"(opCode));
    800013b0:	00100793          	li	a5,1
    800013b4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800013b8:	00000073          	ecall

    __asm__ volatile ("mv a0, %[b]" : [b] "=r"(b));
    800013bc:	00050513          	mv	a0,a0
    return (void*)b;
}
    800013c0:	00813403          	ld	s0,8(sp)
    800013c4:	01010113          	addi	sp,sp,16
    800013c8:	00008067          	ret

00000000800013cc <_Z8mem_freePv>:

int mem_free(void *ptr) {
    800013cc:	ff010113          	addi	sp,sp,-16
    800013d0:	00813423          	sd	s0,8(sp)
    800013d4:	01010413          	addi	s0,sp,16
    int b;

    size_t opCode = 0x02;
    __asm__ volatile("mv a1, %0":: "r"(ptr));
    800013d8:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0":: "r"(opCode));
    800013dc:	00200793          	li	a5,2
    800013e0:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800013e4:	00000073          	ecall

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    800013e8:	00050513          	mv	a0,a0
    return b;
}
    800013ec:	0005051b          	sext.w	a0,a0
    800013f0:	00813403          	ld	s0,8(sp)
    800013f4:	01010113          	addi	sp,sp,16
    800013f8:	00008067          	ret

00000000800013fc <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(
        thread_t *handle,
        void(*start_routine)(void *),
        void *arg
) {
    800013fc:	fd010113          	addi	sp,sp,-48
    80001400:	02113423          	sd	ra,40(sp)
    80001404:	02813023          	sd	s0,32(sp)
    80001408:	00913c23          	sd	s1,24(sp)
    8000140c:	01213823          	sd	s2,16(sp)
    80001410:	01313423          	sd	s3,8(sp)
    80001414:	03010413          	addi	s0,sp,48
    80001418:	00050493          	mv	s1,a0
    8000141c:	00058913          	mv	s2,a1
    80001420:	00060993          	mv	s3,a2
    int b;

    size_t opCode = 0x11;
    void* stack = mem_alloc(DEFAULT_STACK_SIZE);
    80001424:	00001537          	lui	a0,0x1
    80001428:	00000097          	auipc	ra,0x0
    8000142c:	f64080e7          	jalr	-156(ra) # 8000138c <_Z9mem_allocm>
    __asm__ volatile("mv a4, %0":: "r"(stack));
    80001430:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0":: "r"(arg));
    80001434:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0":: "r"(start_routine));
    80001438:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0":: "r"(handle));
    8000143c:	00048593          	mv	a1,s1
    __asm__ volatile ("mv a0, %0":: "r"(opCode));
    80001440:	01100793          	li	a5,17
    80001444:	00078513          	mv	a0,a5
//    asm volatile("mv a3, a2");
//    asm volatile("mv a2, a1");
//    asm volatile("mv a1, a0");

    __asm__ volatile("ecall");
    80001448:	00000073          	ecall

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    8000144c:	00050513          	mv	a0,a0
    return b;
}
    80001450:	0005051b          	sext.w	a0,a0
    80001454:	02813083          	ld	ra,40(sp)
    80001458:	02013403          	ld	s0,32(sp)
    8000145c:	01813483          	ld	s1,24(sp)
    80001460:	01013903          	ld	s2,16(sp)
    80001464:	00813983          	ld	s3,8(sp)
    80001468:	03010113          	addi	sp,sp,48
    8000146c:	00008067          	ret

0000000080001470 <_Z11thread_exitv>:

int thread_exit() {
    80001470:	ff010113          	addi	sp,sp,-16
    80001474:	00813423          	sd	s0,8(sp)
    80001478:	01010413          	addi	s0,sp,16
    int b;

    size_t opCode = 0x12;
    __asm__ volatile ("mv a0, %0":: "r"(opCode));
    8000147c:	01200793          	li	a5,18
    80001480:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001484:	00000073          	ecall

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    80001488:	00050513          	mv	a0,a0
    return b;
}
    8000148c:	0005051b          	sext.w	a0,a0
    80001490:	00813403          	ld	s0,8(sp)
    80001494:	01010113          	addi	sp,sp,16
    80001498:	00008067          	ret

000000008000149c <_Z15thread_dispatchv>:

void thread_dispatch() {
    8000149c:	ff010113          	addi	sp,sp,-16
    800014a0:	00813423          	sd	s0,8(sp)
    800014a4:	01010413          	addi	s0,sp,16

    size_t opCode = 0x13;
    __asm__ volatile ("mv a0, %0":: "r"(opCode));
    800014a8:	01300793          	li	a5,19
    800014ac:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014b0:	00000073          	ecall
}
    800014b4:	00813403          	ld	s0,8(sp)
    800014b8:	01010113          	addi	sp,sp,16
    800014bc:	00008067          	ret

00000000800014c0 <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    800014c0:	ff010113          	addi	sp,sp,-16
    800014c4:	00813423          	sd	s0,8(sp)
    800014c8:	01010413          	addi	s0,sp,16

    size_t opCode = 0x14;
    __asm__ volatile("mv a1, %0":: "r"(handle));
    800014cc:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0":: "r"(opCode));
    800014d0:	01400793          	li	a5,20
    800014d4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014d8:	00000073          	ecall
}
    800014dc:	00813403          	ld	s0,8(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret

00000000800014e8 <_Z13thread_get_idv>:

int thread_get_id() {
    800014e8:	ff010113          	addi	sp,sp,-16
    800014ec:	00813423          	sd	s0,8(sp)
    800014f0:	01010413          	addi	s0,sp,16
    int b;

    size_t opCode = 0x15;
    __asm__ volatile ("mv a0, %0":: "r"(opCode));
    800014f4:	01500793          	li	a5,21
    800014f8:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014fc:	00000073          	ecall

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    80001500:	00050513          	mv	a0,a0
    return b;
}
    80001504:	0005051b          	sext.w	a0,a0
    80001508:	00813403          	ld	s0,8(sp)
    8000150c:	01010113          	addi	sp,sp,16
    80001510:	00008067          	ret

0000000080001514 <_Z13setMaxThreadsi>:

void setMaxThreads(int numOfThreads){
    80001514:	ff010113          	addi	sp,sp,-16
    80001518:	00813423          	sd	s0,8(sp)
    8000151c:	01010413          	addi	s0,sp,16

    size_t opCode = 0x16;
    __asm__ volatile("mv a1, %0":: "r"(numOfThreads));
    80001520:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0":: "r"(opCode));
    80001524:	01600793          	li	a5,22
    80001528:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000152c:	00000073          	ecall
}
    80001530:	00813403          	ld	s0,8(sp)
    80001534:	01010113          	addi	sp,sp,16
    80001538:	00008067          	ret

000000008000153c <_Z8sem_openPP3SEMj>:



int sem_open(sem_t *handle, unsigned int init) {
    8000153c:	ff010113          	addi	sp,sp,-16
    80001540:	00813423          	sd	s0,8(sp)
    80001544:	01010413          	addi	s0,sp,16
    int b;

    size_t opCode = 0x21;
    __asm__ volatile("mv a2, %0":: "r"(init));
    80001548:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0":: "r"(handle));
    8000154c:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0":: "r"(opCode));
    80001550:	02100793          	li	a5,33
    80001554:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001558:	00000073          	ecall

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    8000155c:	00050513          	mv	a0,a0
    return b;
}
    80001560:	0005051b          	sext.w	a0,a0
    80001564:	00813403          	ld	s0,8(sp)
    80001568:	01010113          	addi	sp,sp,16
    8000156c:	00008067          	ret

0000000080001570 <_Z9sem_closeP3SEM>:

int sem_close(sem_t handle) {
    80001570:	ff010113          	addi	sp,sp,-16
    80001574:	00813423          	sd	s0,8(sp)
    80001578:	01010413          	addi	s0,sp,16
    int b;

    size_t opCode = 0x22;
    __asm__ volatile("mv a1, %0":: "r"(handle));
    8000157c:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0":: "r"(opCode));
    80001580:	02200793          	li	a5,34
    80001584:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001588:	00000073          	ecall

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    8000158c:	00050513          	mv	a0,a0
    return b;
}
    80001590:	0005051b          	sext.w	a0,a0
    80001594:	00813403          	ld	s0,8(sp)
    80001598:	01010113          	addi	sp,sp,16
    8000159c:	00008067          	ret

00000000800015a0 <_Z8sem_waitP3SEM>:

int sem_wait(sem_t id) {
    800015a0:	ff010113          	addi	sp,sp,-16
    800015a4:	00813423          	sd	s0,8(sp)
    800015a8:	01010413          	addi	s0,sp,16
    int b;

    size_t opCode = 0x23;
    __asm__ volatile("mv a1, %0":: "r"(id));
    800015ac:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0":: "r"(opCode));
    800015b0:	02300793          	li	a5,35
    800015b4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800015b8:	00000073          	ecall

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    800015bc:	00050513          	mv	a0,a0
    return b;
}
    800015c0:	0005051b          	sext.w	a0,a0
    800015c4:	00813403          	ld	s0,8(sp)
    800015c8:	01010113          	addi	sp,sp,16
    800015cc:	00008067          	ret

00000000800015d0 <_Z10sem_signalP3SEM>:

int sem_signal(sem_t id) {
    800015d0:	ff010113          	addi	sp,sp,-16
    800015d4:	00813423          	sd	s0,8(sp)
    800015d8:	01010413          	addi	s0,sp,16
    int b;

    size_t opCode = 0x24;
    __asm__ volatile("mv a1, %0":: "r"(id));
    800015dc:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0":: "r"(opCode));
    800015e0:	02400793          	li	a5,36
    800015e4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800015e8:	00000073          	ecall

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    800015ec:	00050513          	mv	a0,a0
    return b;
}
    800015f0:	0005051b          	sext.w	a0,a0
    800015f4:	00813403          	ld	s0,8(sp)
    800015f8:	01010113          	addi	sp,sp,16
    800015fc:	00008067          	ret

0000000080001600 <_Z10time_sleepm>:

int time_sleep(time_t){ //ovo nisam implementirao
    80001600:	ff010113          	addi	sp,sp,-16
    80001604:	00813423          	sd	s0,8(sp)
    80001608:	01010413          	addi	s0,sp,16
    int b;

    asm volatile("mv a1, a0");
    8000160c:	00050593          	mv	a1,a0
    asm volatile("li a0, 0x31");
    80001610:	03100513          	li	a0,49
    __asm__ volatile("ecall");
    80001614:	00000073          	ecall

    __asm__ volatile("mv %[b], a0" : [b] "=r"(b));
    80001618:	00050513          	mv	a0,a0
    return b;
}
    8000161c:	0005051b          	sext.w	a0,a0
    80001620:	00813403          	ld	s0,8(sp)
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret

000000008000162c <_Z4putcc>:


void putc(char c) {
    8000162c:	ff010113          	addi	sp,sp,-16
    80001630:	00813423          	sd	s0,8(sp)
    80001634:	01010413          	addi	s0,sp,16

    size_t opCode = 0x42;
    __asm__ volatile("mv a1, %0":: "r"(c));
    80001638:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0":: "r"(opCode));
    8000163c:	04200793          	li	a5,66
    80001640:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001644:	00000073          	ecall
}
    80001648:	00813403          	ld	s0,8(sp)
    8000164c:	01010113          	addi	sp,sp,16
    80001650:	00008067          	ret

0000000080001654 <_Z4getcv>:

char getc() {
    80001654:	ff010113          	addi	sp,sp,-16
    80001658:	00813423          	sd	s0,8(sp)
    8000165c:	01010413          	addi	s0,sp,16
    char b;

    size_t opCode = 0x41;
    __asm__ volatile ("mv a0, %0":: "r"(opCode));
    80001660:	04100793          	li	a5,65
    80001664:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001668:	00000073          	ecall

    __asm__ volatile ("mv %[b], a0" : [b] "=r"(b));
    8000166c:	00050513          	mv	a0,a0
    return b;
}
    80001670:	0ff57513          	andi	a0,a0,255
    80001674:	00813403          	ld	s0,8(sp)
    80001678:	01010113          	addi	sp,sp,16
    8000167c:	00008067          	ret

0000000080001680 <_Z15wrapperUserMainPv>:
#include "../h/syscall_c.h"

extern "C" void trap();
void userMain();

void wrapperUserMain(void *){
    80001680:	ff010113          	addi	sp,sp,-16
    80001684:	00113423          	sd	ra,8(sp)
    80001688:	00813023          	sd	s0,0(sp)
    8000168c:	01010413          	addi	s0,sp,16
    userMain();
    80001690:	00004097          	auipc	ra,0x4
    80001694:	5b8080e7          	jalr	1464(ra) # 80005c48 <_Z8userMainv>
    //sem_signal(Riscv::mainSemaphore);
}
    80001698:	00813083          	ld	ra,8(sp)
    8000169c:	00013403          	ld	s0,0(sp)
    800016a0:	01010113          	addi	sp,sp,16
    800016a4:	00008067          	ret

00000000800016a8 <main>:

int main(){
    800016a8:	fe010113          	addi	sp,sp,-32
    800016ac:	00113c23          	sd	ra,24(sp)
    800016b0:	00813823          	sd	s0,16(sp)
    800016b4:	00913423          	sd	s1,8(sp)
    800016b8:	02010413          	addi	s0,sp,32

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap | 1); //proveriti zasto jedan ovde
    800016bc:	0000b797          	auipc	a5,0xb
    800016c0:	79c7b783          	ld	a5,1948(a5) # 8000ce58 <_GLOBAL_OFFSET_TABLE_+0x10>
    800016c4:	0017e793          	ori	a5,a5,1
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800016c8:	10579073          	csrw	stvec,a5
    MEM::init();
    800016cc:	00001097          	auipc	ra,0x1
    800016d0:	5a8080e7          	jalr	1448(ra) # 80002c74 <_ZN3MEM4initEv>
    TCB::running = TCB::createThread(nullptr,nullptr, nullptr);
    800016d4:	00000613          	li	a2,0
    800016d8:	00000593          	li	a1,0
    800016dc:	00000513          	li	a0,0
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	260080e7          	jalr	608(ra) # 80001940 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    800016e8:	0000b497          	auipc	s1,0xb
    800016ec:	7904b483          	ld	s1,1936(s1) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x30>
    800016f0:	00a4b023          	sd	a0,0(s1)
    thread_create(&Riscv::mainThread, wrapperUserMain, nullptr);
    800016f4:	00000613          	li	a2,0
    800016f8:	00000597          	auipc	a1,0x0
    800016fc:	f8858593          	addi	a1,a1,-120 # 80001680 <_Z15wrapperUserMainPv>
    80001700:	0000b517          	auipc	a0,0xb
    80001704:	77053503          	ld	a0,1904(a0) # 8000ce70 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	cf4080e7          	jalr	-780(ra) # 800013fc <_Z13thread_createPP3TCBPFvPvES2_>
    thread_join(Riscv::mainThread);
    80001710:	0000b797          	auipc	a5,0xb
    80001714:	7607b783          	ld	a5,1888(a5) # 8000ce70 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001718:	0007b503          	ld	a0,0(a5)
    8000171c:	00000097          	auipc	ra,0x0
    80001720:	da4080e7          	jalr	-604(ra) # 800014c0 <_Z11thread_joinP3TCB>
    delete TCB::running;
    80001724:	0004b483          	ld	s1,0(s1)
    80001728:	02048063          	beqz	s1,80001748 <main+0xa0>
    }
    void operator delete[](void *p) noexcept{
//        mem_free(p);
        MEM::memFree(p);
    }
    ~TCB() { delete[] stack; }
    8000172c:	0284b503          	ld	a0,40(s1)
    80001730:	00050663          	beqz	a0,8000173c <main+0x94>
    80001734:	00000097          	auipc	ra,0x0
    80001738:	6d0080e7          	jalr	1744(ra) # 80001e04 <_ZdaPv>
        MEM::memFree(p);
    8000173c:	00048513          	mv	a0,s1
    80001740:	00001097          	auipc	ra,0x1
    80001744:	608080e7          	jalr	1544(ra) # 80002d48 <_ZN3MEM7memFreeEPv>

    return 0;
}
    80001748:	00000513          	li	a0,0
    8000174c:	01813083          	ld	ra,24(sp)
    80001750:	01013403          	ld	s0,16(sp)
    80001754:	00813483          	ld	s1,8(sp)
    80001758:	02010113          	addi	sp,sp,32
    8000175c:	00008067          	ret

0000000080001760 <_ZN7Console7getCharEv>:
#include "../h/console.h"

char Console::getChar() {
    80001760:	fe010113          	addi	sp,sp,-32
    80001764:	00113c23          	sd	ra,24(sp)
    80001768:	00813823          	sd	s0,16(sp)
    8000176c:	00913423          	sd	s1,8(sp)
    80001770:	01213023          	sd	s2,0(sp)
    80001774:	02010413          	addi	s0,sp,32
    80001778:	00050493          	mv	s1,a0

    SEM::semWait(items);
    8000177c:	02053503          	ld	a0,32(a0)
    80001780:	00001097          	auipc	ra,0x1
    80001784:	160080e7          	jalr	352(ra) # 800028e0 <_ZN3SEM7semWaitEPS_>
    char c = buffer[head];
    80001788:	0104b703          	ld	a4,16(s1)
    8000178c:	0084a783          	lw	a5,8(s1)
    80001790:	00f70733          	add	a4,a4,a5
    80001794:	00074903          	lbu	s2,0(a4)
    head= (head + 1) % capacity;
    80001798:	0017879b          	addiw	a5,a5,1
    8000179c:	41f7d71b          	sraiw	a4,a5,0x1f
    800017a0:	0167571b          	srliw	a4,a4,0x16
    800017a4:	00e787bb          	addw	a5,a5,a4
    800017a8:	3ff7f793          	andi	a5,a5,1023
    800017ac:	40e787bb          	subw	a5,a5,a4
    800017b0:	00f4a423          	sw	a5,8(s1)
    size--;
    800017b4:	0044a783          	lw	a5,4(s1)
    800017b8:	fff7879b          	addiw	a5,a5,-1
    800017bc:	00f4a223          	sw	a5,4(s1)
    SEM::semSignal(spaces);
    800017c0:	0184b503          	ld	a0,24(s1)
    800017c4:	00001097          	auipc	ra,0x1
    800017c8:	174080e7          	jalr	372(ra) # 80002938 <_ZN3SEM9semSignalEPS_>

    return c;
}
    800017cc:	00090513          	mv	a0,s2
    800017d0:	01813083          	ld	ra,24(sp)
    800017d4:	01013403          	ld	s0,16(sp)
    800017d8:	00813483          	ld	s1,8(sp)
    800017dc:	00013903          	ld	s2,0(sp)
    800017e0:	02010113          	addi	sp,sp,32
    800017e4:	00008067          	ret

00000000800017e8 <_ZN7Console7putCharEc>:

void Console::putChar(char c) {
    800017e8:	fe010113          	addi	sp,sp,-32
    800017ec:	00113c23          	sd	ra,24(sp)
    800017f0:	00813823          	sd	s0,16(sp)
    800017f4:	00913423          	sd	s1,8(sp)
    800017f8:	01213023          	sd	s2,0(sp)
    800017fc:	02010413          	addi	s0,sp,32
    80001800:	00050493          	mv	s1,a0
    80001804:	00058913          	mv	s2,a1

    SEM::semWait(spaces);
    80001808:	01853503          	ld	a0,24(a0)
    8000180c:	00001097          	auipc	ra,0x1
    80001810:	0d4080e7          	jalr	212(ra) # 800028e0 <_ZN3SEM7semWaitEPS_>
//    sem_wait(spaces);
    buffer[tail] = c;
    80001814:	0104b783          	ld	a5,16(s1)
    80001818:	00c4a703          	lw	a4,12(s1)
    8000181c:	00e787b3          	add	a5,a5,a4
    80001820:	01278023          	sb	s2,0(a5)
    tail = (tail + 1) % capacity;
    80001824:	00c4a783          	lw	a5,12(s1)
    80001828:	0017879b          	addiw	a5,a5,1
    8000182c:	41f7d71b          	sraiw	a4,a5,0x1f
    80001830:	0167571b          	srliw	a4,a4,0x16
    80001834:	00e787bb          	addw	a5,a5,a4
    80001838:	3ff7f793          	andi	a5,a5,1023
    8000183c:	40e787bb          	subw	a5,a5,a4
    80001840:	00f4a623          	sw	a5,12(s1)
    size++;
    80001844:	0044a783          	lw	a5,4(s1)
    80001848:	0017879b          	addiw	a5,a5,1
    8000184c:	00f4a223          	sw	a5,4(s1)
//    sem_wait(items);
    SEM::semSignal(items);
    80001850:	0204b503          	ld	a0,32(s1)
    80001854:	00001097          	auipc	ra,0x1
    80001858:	0e4080e7          	jalr	228(ra) # 80002938 <_ZN3SEM9semSignalEPS_>

}
    8000185c:	01813083          	ld	ra,24(sp)
    80001860:	01013403          	ld	s0,16(sp)
    80001864:	00813483          	ld	s1,8(sp)
    80001868:	00013903          	ld	s2,0(sp)
    8000186c:	02010113          	addi	sp,sp,32
    80001870:	00008067          	ret

0000000080001874 <_ZN7Console9systemGetEv>:

char Console::systemGet() {
    80001874:	fe010113          	addi	sp,sp,-32
    80001878:	00113c23          	sd	ra,24(sp)
    8000187c:	00813823          	sd	s0,16(sp)
    80001880:	00913423          	sd	s1,8(sp)
    80001884:	01213023          	sd	s2,0(sp)
    80001888:	02010413          	addi	s0,sp,32
    8000188c:	00050493          	mv	s1,a0

    sem_wait(items);
    80001890:	02053503          	ld	a0,32(a0)
    80001894:	00000097          	auipc	ra,0x0
    80001898:	d0c080e7          	jalr	-756(ra) # 800015a0 <_Z8sem_waitP3SEM>
    char c = buffer[head++];
    8000189c:	0104b703          	ld	a4,16(s1)
    800018a0:	0084a683          	lw	a3,8(s1)
    800018a4:	0016879b          	addiw	a5,a3,1
    800018a8:	00f4a423          	sw	a5,8(s1)
    800018ac:	00d70733          	add	a4,a4,a3
    800018b0:	00074903          	lbu	s2,0(a4)
    head = head % capacity;
    800018b4:	41f7d71b          	sraiw	a4,a5,0x1f
    800018b8:	0167571b          	srliw	a4,a4,0x16
    800018bc:	00e787bb          	addw	a5,a5,a4
    800018c0:	3ff7f793          	andi	a5,a5,1023
    800018c4:	40e787bb          	subw	a5,a5,a4
    800018c8:	00f4a423          	sw	a5,8(s1)
    size--;
    800018cc:	0044a783          	lw	a5,4(s1)
    800018d0:	fff7879b          	addiw	a5,a5,-1
    800018d4:	00f4a223          	sw	a5,4(s1)
    sem_signal(spaces);
    800018d8:	0184b503          	ld	a0,24(s1)
    800018dc:	00000097          	auipc	ra,0x0
    800018e0:	cf4080e7          	jalr	-780(ra) # 800015d0 <_Z10sem_signalP3SEM>

    return c;
    800018e4:	00090513          	mv	a0,s2
    800018e8:	01813083          	ld	ra,24(sp)
    800018ec:	01013403          	ld	s0,16(sp)
    800018f0:	00813483          	ld	s1,8(sp)
    800018f4:	00013903          	ld	s2,0(sp)
    800018f8:	02010113          	addi	sp,sp,32
    800018fc:	00008067          	ret

0000000080001900 <_ZN3TCB13setMaxThreadsEi>:
TCB *TCB::running = nullptr;
int TCB::maxThreadId = 0;
int TCB::maxThreads = 0;
List<TCB> *TCB::blocked = nullptr;

void TCB::setMaxThreads(int numOfThreads){
    80001900:	ff010113          	addi	sp,sp,-16
    80001904:	00813423          	sd	s0,8(sp)
    80001908:	01010413          	addi	s0,sp,16
    maxThreads = numOfThreads;
    8000190c:	0000b797          	auipc	a5,0xb
    80001910:	5ca7aa23          	sw	a0,1492(a5) # 8000cee0 <_ZN3TCB10maxThreadsE>
}
    80001914:	00813403          	ld	s0,8(sp)
    80001918:	01010113          	addi	sp,sp,16
    8000191c:	00008067          	ret

0000000080001920 <_ZN3TCB4pingEPS_>:
int TCB::getThreadId() {
    TCB::dispatch();
    return threadId;
}

void TCB::ping(thread_t handle){
    80001920:	ff010113          	addi	sp,sp,-16
    80001924:	00813423          	sd	s0,8(sp)
    80001928:	01010413          	addi	s0,sp,16
    bool getHasChildren() const { return hasChildren; }
    void setHasChildren(bool value) { hasChildren = value; }
    TCB *getParent() const { return parent;}
    void setParent(TCB *parent) {this->parent = parent; }
    int getThreadId();
    void setPing(bool ping) { this->pinged = ping;}
    8000192c:	00100793          	li	a5,1
    80001930:	04f58223          	sb	a5,68(a1)
    handle->setPing(true);
}
    80001934:	00813403          	ld	s0,8(sp)
    80001938:	01010113          	addi	sp,sp,16
    8000193c:	00008067          	ret

0000000080001940 <_ZN3TCB12createThreadEPFvPvES0_Pm>:
        printString("\n");
    }
    thread_exit();
}

TCB* TCB::createThread(Body body, void* arg, uint64* stack){
    80001940:	fd010113          	addi	sp,sp,-48
    80001944:	02113423          	sd	ra,40(sp)
    80001948:	02813023          	sd	s0,32(sp)
    8000194c:	00913c23          	sd	s1,24(sp)
    80001950:	01213823          	sd	s2,16(sp)
    80001954:	01313423          	sd	s3,8(sp)
    80001958:	01413023          	sd	s4,0(sp)
    8000195c:	03010413          	addi	s0,sp,48
    80001960:	00050a13          	mv	s4,a0
    80001964:	00058993          	mv	s3,a1
    80001968:	00060913          	mv	s2,a2
        return MEM::memAlloc(n + sizeof(MEM::FullSpace));
    8000196c:	06000513          	li	a0,96
    80001970:	00001097          	auipc	ra,0x1
    80001974:	1c8080e7          	jalr	456(ra) # 80002b38 <_ZN3MEM8memAllocEm>
    80001978:	00050493          	mv	s1,a0
    static int maxThreadId;
    bool pinged;
    static int maxThreads;

    TCB(Body body, void* arg, uint64* stack){
        this->body = body;
    8000197c:	01453c23          	sd	s4,24(a0)
        this->arg = arg;
    80001980:	03353023          	sd	s3,32(a0)
        this->stack = stack;
    80001984:	03253423          	sd	s2,40(a0)
        context.ra = (uint64) &threadWrapper;
    80001988:	00000797          	auipc	a5,0x0
    8000198c:	17878793          	addi	a5,a5,376 # 80001b00 <_ZN3TCB13threadWrapperEv>
    80001990:	00f53423          	sd	a5,8(a0)
        context.sp = (stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE / sizeof(uint64)] : 0);
    80001994:	02090663          	beqz	s2,800019c0 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x80>
    80001998:	00001637          	lui	a2,0x1
    8000199c:	00c90933          	add	s2,s2,a2
    800019a0:	0124b823          	sd	s2,16(s1)
        finished = false;
    800019a4:	02048823          	sb	zero,48(s1)
        hasChildren = false;
    800019a8:	020488a3          	sb	zero,49(s1)
        parent = nullptr;
    800019ac:	0204bc23          	sd	zero,56(s1)
        suspended = new List<TCB>();
    800019b0:	01800513          	li	a0,24
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	3d0080e7          	jalr	976(ra) # 80001d84 <_Znwm>
    800019bc:	00c0006f          	j	800019c8 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x88>
        context.sp = (stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE / sizeof(uint64)] : 0);
    800019c0:	00000913          	li	s2,0
    800019c4:	fddff06f          	j	800019a0 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x60>

    Elem *head, *tail;
    int size;

public:
    List() : head(0), tail(0), size(0) {}
    800019c8:	00053023          	sd	zero,0(a0)
    800019cc:	00053423          	sd	zero,8(a0)
    800019d0:	00052823          	sw	zero,16(a0)
        suspended = new List<TCB>();
    800019d4:	00a4b023          	sd	a0,0(s1)
        if(threadId == 0) {
    800019d8:	0404a783          	lw	a5,64(s1)
    800019dc:	04078263          	beqz	a5,80001a20 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xe0>
            blocked = new List<TCB>();
        }
        threadId = maxThreadId;
    800019e0:	0000b717          	auipc	a4,0xb
    800019e4:	50070713          	addi	a4,a4,1280 # 8000cee0 <_ZN3TCB10maxThreadsE>
    800019e8:	01072783          	lw	a5,16(a4)
    800019ec:	04f4a023          	sw	a5,64(s1)
        maxThreadId++;
    800019f0:	0017879b          	addiw	a5,a5,1
    800019f4:	00f72823          	sw	a5,16(a4)
        pinged = false;
    800019f8:	04048223          	sb	zero,68(s1)
    return new TCB(body, arg, stack);
}
    800019fc:	00048513          	mv	a0,s1
    80001a00:	02813083          	ld	ra,40(sp)
    80001a04:	02013403          	ld	s0,32(sp)
    80001a08:	01813483          	ld	s1,24(sp)
    80001a0c:	01013903          	ld	s2,16(sp)
    80001a10:	00813983          	ld	s3,8(sp)
    80001a14:	00013a03          	ld	s4,0(sp)
    80001a18:	03010113          	addi	sp,sp,48
    80001a1c:	00008067          	ret
            blocked = new List<TCB>();
    80001a20:	01800513          	li	a0,24
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	360080e7          	jalr	864(ra) # 80001d84 <_Znwm>
    80001a2c:	00053023          	sd	zero,0(a0)
    80001a30:	00053423          	sd	zero,8(a0)
    80001a34:	00052823          	sw	zero,16(a0)
    80001a38:	0000b797          	auipc	a5,0xb
    80001a3c:	4aa7b823          	sd	a0,1200(a5) # 8000cee8 <_ZN3TCB7blockedE>
    80001a40:	fa1ff06f          	j	800019e0 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xa0>
    80001a44:	00050913          	mv	s2,a0
        MEM::memFree(p);
    80001a48:	00048513          	mv	a0,s1
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	2fc080e7          	jalr	764(ra) # 80002d48 <_ZN3MEM7memFreeEPv>
    80001a54:	00090513          	mv	a0,s2
    80001a58:	0000c097          	auipc	ra,0xc
    80001a5c:	620080e7          	jalr	1568(ra) # 8000e078 <_Unwind_Resume>

0000000080001a60 <_ZN3TCB8dispatchEv>:
    TCB::dispatch();

    return 0;
}

void TCB::dispatch(){
    80001a60:	fe010113          	addi	sp,sp,-32
    80001a64:	00113c23          	sd	ra,24(sp)
    80001a68:	00813823          	sd	s0,16(sp)
    80001a6c:	00913423          	sd	s1,8(sp)
    80001a70:	02010413          	addi	s0,sp,32

    TCB *old = running;
    80001a74:	0000b497          	auipc	s1,0xb
    80001a78:	4844b483          	ld	s1,1156(s1) # 8000cef8 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001a7c:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001a80:	02078c63          	beqz	a5,80001ab8 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001a84:	00001097          	auipc	ra,0x1
    80001a88:	f70080e7          	jalr	-144(ra) # 800029f4 <_ZN9Scheduler3getEv>
    80001a8c:	0000b797          	auipc	a5,0xb
    80001a90:	46a7b623          	sd	a0,1132(a5) # 8000cef8 <_ZN3TCB7runningE>

//    if(Scheduler::getSchSize() < (TCB::maxThreads - 1)){
//        Scheduler::put(blocked->removeFirst());
//    }

    TCB::contextSwitch(&old->context, &running->context);
    80001a94:	00850593          	addi	a1,a0,8
    80001a98:	00848513          	addi	a0,s1,8
    80001a9c:	00000097          	auipc	ra,0x0
    80001aa0:	8bc080e7          	jalr	-1860(ra) # 80001358 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001aa4:	01813083          	ld	ra,24(sp)
    80001aa8:	01013403          	ld	s0,16(sp)
    80001aac:	00813483          	ld	s1,8(sp)
    80001ab0:	02010113          	addi	sp,sp,32
    80001ab4:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001ab8:	00048513          	mv	a0,s1
    80001abc:	00001097          	auipc	ra,0x1
    80001ac0:	fb8080e7          	jalr	-72(ra) # 80002a74 <_ZN9Scheduler3putEP3TCB>
    80001ac4:	fc1ff06f          	j	80001a84 <_ZN3TCB8dispatchEv+0x24>

0000000080001ac8 <_ZN3TCB11getThreadIdEv>:
int TCB::getThreadId() {
    80001ac8:	fe010113          	addi	sp,sp,-32
    80001acc:	00113c23          	sd	ra,24(sp)
    80001ad0:	00813823          	sd	s0,16(sp)
    80001ad4:	00913423          	sd	s1,8(sp)
    80001ad8:	02010413          	addi	s0,sp,32
    80001adc:	00050493          	mv	s1,a0
    TCB::dispatch();
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	f80080e7          	jalr	-128(ra) # 80001a60 <_ZN3TCB8dispatchEv>
}
    80001ae8:	0404a503          	lw	a0,64(s1)
    80001aec:	01813083          	ld	ra,24(sp)
    80001af0:	01013403          	ld	s0,16(sp)
    80001af4:	00813483          	ld	s1,8(sp)
    80001af8:	02010113          	addi	sp,sp,32
    80001afc:	00008067          	ret

0000000080001b00 <_ZN3TCB13threadWrapperEv>:
void TCB::threadWrapper(){
    80001b00:	fe010113          	addi	sp,sp,-32
    80001b04:	00113c23          	sd	ra,24(sp)
    80001b08:	00813823          	sd	s0,16(sp)
    80001b0c:	00913423          	sd	s1,8(sp)
    80001b10:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	7ac080e7          	jalr	1964(ra) # 800022c0 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001b1c:	0000b497          	auipc	s1,0xb
    80001b20:	3c448493          	addi	s1,s1,964 # 8000cee0 <_ZN3TCB10maxThreadsE>
    80001b24:	0184b783          	ld	a5,24(s1)
    80001b28:	0187b703          	ld	a4,24(a5)
    80001b2c:	0207b503          	ld	a0,32(a5)
    80001b30:	000700e7          	jalr	a4
    if(TCB::running->pinged){
    80001b34:	0184b503          	ld	a0,24(s1)
    80001b38:	04454783          	lbu	a5,68(a0)
    80001b3c:	02079063          	bnez	a5,80001b5c <_ZN3TCB13threadWrapperEv+0x5c>
    thread_exit();
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	930080e7          	jalr	-1744(ra) # 80001470 <_Z11thread_exitv>
}
    80001b48:	01813083          	ld	ra,24(sp)
    80001b4c:	01013403          	ld	s0,16(sp)
    80001b50:	00813483          	ld	s1,8(sp)
    80001b54:	02010113          	addi	sp,sp,32
    80001b58:	00008067          	ret
        int id = TCB::running->getThreadId();
    80001b5c:	00000097          	auipc	ra,0x0
    80001b60:	f6c080e7          	jalr	-148(ra) # 80001ac8 <_ZN3TCB11getThreadIdEv>
    80001b64:	00050493          	mv	s1,a0
        printString("Id ping-ovane niti je: ");
    80001b68:	00008517          	auipc	a0,0x8
    80001b6c:	4b850513          	addi	a0,a0,1208 # 8000a020 <CONSOLE_STATUS+0x10>
    80001b70:	00004097          	auipc	ra,0x4
    80001b74:	a10080e7          	jalr	-1520(ra) # 80005580 <_Z11printStringPKc>
        printInt(id);
    80001b78:	00000613          	li	a2,0
    80001b7c:	00a00593          	li	a1,10
    80001b80:	00048513          	mv	a0,s1
    80001b84:	00004097          	auipc	ra,0x4
    80001b88:	bac080e7          	jalr	-1108(ra) # 80005730 <_Z8printIntiii>
        printString("\n");
    80001b8c:	00008517          	auipc	a0,0x8
    80001b90:	7c450513          	addi	a0,a0,1988 # 8000a350 <CONSOLE_STATUS+0x340>
    80001b94:	00004097          	auipc	ra,0x4
    80001b98:	9ec080e7          	jalr	-1556(ra) # 80005580 <_Z11printStringPKc>
    80001b9c:	fa5ff06f          	j	80001b40 <_ZN3TCB13threadWrapperEv+0x40>

0000000080001ba0 <_ZN3TCB10threadExitEv>:
int TCB::threadExit(){
    80001ba0:	fe010113          	addi	sp,sp,-32
    80001ba4:	00113c23          	sd	ra,24(sp)
    80001ba8:	00813823          	sd	s0,16(sp)
    80001bac:	00913423          	sd	s1,8(sp)
    80001bb0:	01213023          	sd	s2,0(sp)
    80001bb4:	02010413          	addi	s0,sp,32
    if (TCB::running == nullptr ) return -1;
    80001bb8:	0000b797          	auipc	a5,0xb
    80001bbc:	3407b783          	ld	a5,832(a5) # 8000cef8 <_ZN3TCB7runningE>
    80001bc0:	10078463          	beqz	a5,80001cc8 <_ZN3TCB10threadExitEv+0x128>
            this->finished = value;
    80001bc4:	00100713          	li	a4,1
    80001bc8:	02e78823          	sb	a4,48(a5)
    }
    80001bcc:	0200006f          	j	80001bec <_ZN3TCB10threadExitEv+0x4c>
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        size--;
        if (!head) { tail = 0; }
    80001bd0:	0007b423          	sd	zero,8(a5)

        T *ret = elem->data;
    80001bd4:	00053483          	ld	s1,0(a0)
        delete elem;
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	1fc080e7          	jalr	508(ra) # 80001dd4 <_ZdlPv>
        Scheduler::put(running->suspended->removeFirst());
    80001be0:	00048513          	mv	a0,s1
    80001be4:	00001097          	auipc	ra,0x1
    80001be8:	e90080e7          	jalr	-368(ra) # 80002a74 <_ZN9Scheduler3putEP3TCB>
    while(running->suspended->getSize()) {
    80001bec:	0000b797          	auipc	a5,0xb
    80001bf0:	30c7b783          	ld	a5,780(a5) # 8000cef8 <_ZN3TCB7runningE>
    80001bf4:	0007b783          	ld	a5,0(a5)
    int getSize(){ return size; }
    80001bf8:	0107a483          	lw	s1,16(a5)
    80001bfc:	02048863          	beqz	s1,80001c2c <_ZN3TCB10threadExitEv+0x8c>
        if (!head) { return 0; }
    80001c00:	0007b503          	ld	a0,0(a5)
    80001c04:	02050063          	beqz	a0,80001c24 <_ZN3TCB10threadExitEv+0x84>
        head = head->next;
    80001c08:	00853683          	ld	a3,8(a0)
    80001c0c:	00d7b023          	sd	a3,0(a5)
        size--;
    80001c10:	0107a703          	lw	a4,16(a5)
    80001c14:	fff7071b          	addiw	a4,a4,-1
    80001c18:	00e7a823          	sw	a4,16(a5)
        if (!head) { tail = 0; }
    80001c1c:	fa069ce3          	bnez	a3,80001bd4 <_ZN3TCB10threadExitEv+0x34>
    80001c20:	fb1ff06f          	j	80001bd0 <_ZN3TCB10threadExitEv+0x30>
        if (!head) { return 0; }
    80001c24:	00050493          	mv	s1,a0
    80001c28:	fb9ff06f          	j	80001be0 <_ZN3TCB10threadExitEv+0x40>
    if(blocked->getSize() != 0 && Scheduler::getSchSize() < (TCB::maxThreads)){
    80001c2c:	0000b797          	auipc	a5,0xb
    80001c30:	2bc7b783          	ld	a5,700(a5) # 8000cee8 <_ZN3TCB7blockedE>
    int getSize(){ return size; }
    80001c34:	0107a783          	lw	a5,16(a5)
    80001c38:	02079463          	bnez	a5,80001c60 <_ZN3TCB10threadExitEv+0xc0>
    TCB::dispatch();
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	e24080e7          	jalr	-476(ra) # 80001a60 <_ZN3TCB8dispatchEv>
}
    80001c44:	00048513          	mv	a0,s1
    80001c48:	01813083          	ld	ra,24(sp)
    80001c4c:	01013403          	ld	s0,16(sp)
    80001c50:	00813483          	ld	s1,8(sp)
    80001c54:	00013903          	ld	s2,0(sp)
    80001c58:	02010113          	addi	sp,sp,32
    80001c5c:	00008067          	ret
    if(blocked->getSize() != 0 && Scheduler::getSchSize() < (TCB::maxThreads)){
    80001c60:	00001097          	auipc	ra,0x1
    80001c64:	d74080e7          	jalr	-652(ra) # 800029d4 <_ZN9Scheduler10getSchSizeEv>
    80001c68:	0000b797          	auipc	a5,0xb
    80001c6c:	2787a783          	lw	a5,632(a5) # 8000cee0 <_ZN3TCB10maxThreadsE>
    80001c70:	fcf556e3          	bge	a0,a5,80001c3c <_ZN3TCB10threadExitEv+0x9c>
        Scheduler::put(blocked->removeFirst());
    80001c74:	0000b797          	auipc	a5,0xb
    80001c78:	2747b783          	ld	a5,628(a5) # 8000cee8 <_ZN3TCB7blockedE>
        if (!head) { return 0; }
    80001c7c:	0007b503          	ld	a0,0(a5)
    80001c80:	04050063          	beqz	a0,80001cc0 <_ZN3TCB10threadExitEv+0x120>
        head = head->next;
    80001c84:	00853683          	ld	a3,8(a0)
    80001c88:	00d7b023          	sd	a3,0(a5)
        size--;
    80001c8c:	0107a703          	lw	a4,16(a5)
    80001c90:	fff7071b          	addiw	a4,a4,-1
    80001c94:	00e7a823          	sw	a4,16(a5)
        if (!head) { tail = 0; }
    80001c98:	02068063          	beqz	a3,80001cb8 <_ZN3TCB10threadExitEv+0x118>
        T *ret = elem->data;
    80001c9c:	00053903          	ld	s2,0(a0)
        delete elem;
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	134080e7          	jalr	308(ra) # 80001dd4 <_ZdlPv>
    80001ca8:	00090513          	mv	a0,s2
    80001cac:	00001097          	auipc	ra,0x1
    80001cb0:	dc8080e7          	jalr	-568(ra) # 80002a74 <_ZN9Scheduler3putEP3TCB>
    80001cb4:	f89ff06f          	j	80001c3c <_ZN3TCB10threadExitEv+0x9c>
        if (!head) { tail = 0; }
    80001cb8:	0007b423          	sd	zero,8(a5)
    80001cbc:	fe1ff06f          	j	80001c9c <_ZN3TCB10threadExitEv+0xfc>
        if (!head) { return 0; }
    80001cc0:	00050913          	mv	s2,a0
    80001cc4:	fe5ff06f          	j	80001ca8 <_ZN3TCB10threadExitEv+0x108>
    if (TCB::running == nullptr ) return -1;
    80001cc8:	fff00493          	li	s1,-1
    80001ccc:	f79ff06f          	j	80001c44 <_ZN3TCB10threadExitEv+0xa4>

0000000080001cd0 <_ZN3TCB10threadJoinEPS_>:

void TCB::threadJoin(thread_t handle){
    80001cd0:	fe010113          	addi	sp,sp,-32
    80001cd4:	00113c23          	sd	ra,24(sp)
    80001cd8:	00813823          	sd	s0,16(sp)
    80001cdc:	00913423          	sd	s1,8(sp)
    80001ce0:	01213023          	sd	s2,0(sp)
    80001ce4:	02010413          	addi	s0,sp,32

    if (running == nullptr || handle == nullptr)
    80001ce8:	0000b497          	auipc	s1,0xb
    80001cec:	2104b483          	ld	s1,528(s1) # 8000cef8 <_ZN3TCB7runningE>
    80001cf0:	00048863          	beqz	s1,80001d00 <_ZN3TCB10threadJoinEPS_+0x30>
    80001cf4:	00050663          	beqz	a0,80001d00 <_ZN3TCB10threadJoinEPS_+0x30>
    bool isFinished() const { return finished; }
    80001cf8:	03054783          	lbu	a5,48(a0)
        return;

    if (!handle->isFinished()) {
    80001cfc:	00078e63          	beqz	a5,80001d18 <_ZN3TCB10threadJoinEPS_+0x48>
        TCB* current = running;
        running = Scheduler::get();
        TCB::contextSwitch(&current->context,&running->context);
    }

}
    80001d00:	01813083          	ld	ra,24(sp)
    80001d04:	01013403          	ld	s0,16(sp)
    80001d08:	00813483          	ld	s1,8(sp)
    80001d0c:	00013903          	ld	s2,0(sp)
    80001d10:	02010113          	addi	sp,sp,32
    80001d14:	00008067          	ret
        handle->suspended->addLast(running);
    80001d18:	00053903          	ld	s2,0(a0)
        Elem *elem = new Elem(data, 0);
    80001d1c:	01000513          	li	a0,16
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	064080e7          	jalr	100(ra) # 80001d84 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001d28:	00953023          	sd	s1,0(a0)
    80001d2c:	00053423          	sd	zero,8(a0)
        size++;
    80001d30:	01092783          	lw	a5,16(s2)
    80001d34:	0017879b          	addiw	a5,a5,1
    80001d38:	00f92823          	sw	a5,16(s2)
        if (tail)
    80001d3c:	00893783          	ld	a5,8(s2)
    80001d40:	02078c63          	beqz	a5,80001d78 <_ZN3TCB10threadJoinEPS_+0xa8>
            tail->next = elem;
    80001d44:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001d48:	00a93423          	sd	a0,8(s2)
        TCB* current = running;
    80001d4c:	0000b497          	auipc	s1,0xb
    80001d50:	19448493          	addi	s1,s1,404 # 8000cee0 <_ZN3TCB10maxThreadsE>
    80001d54:	0184b903          	ld	s2,24(s1)
        running = Scheduler::get();
    80001d58:	00001097          	auipc	ra,0x1
    80001d5c:	c9c080e7          	jalr	-868(ra) # 800029f4 <_ZN9Scheduler3getEv>
    80001d60:	00a4bc23          	sd	a0,24(s1)
        TCB::contextSwitch(&current->context,&running->context);
    80001d64:	00850593          	addi	a1,a0,8
    80001d68:	00890513          	addi	a0,s2,8
    80001d6c:	fffff097          	auipc	ra,0xfffff
    80001d70:	5ec080e7          	jalr	1516(ra) # 80001358 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    80001d74:	f8dff06f          	j	80001d00 <_ZN3TCB10threadJoinEPS_+0x30>
            head = tail = elem;
    80001d78:	00a93423          	sd	a0,8(s2)
    80001d7c:	00a93023          	sd	a0,0(s2)
    80001d80:	fcdff06f          	j	80001d4c <_ZN3TCB10threadJoinEPS_+0x7c>

0000000080001d84 <_Znwm>:
#include "../h/syscall_c.h"

//preuzeto sa vezbi

void *operator new(size_t n)
{
    80001d84:	ff010113          	addi	sp,sp,-16
    80001d88:	00113423          	sd	ra,8(sp)
    80001d8c:	00813023          	sd	s0,0(sp)
    80001d90:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001d94:	fffff097          	auipc	ra,0xfffff
    80001d98:	5f8080e7          	jalr	1528(ra) # 8000138c <_Z9mem_allocm>
}
    80001d9c:	00813083          	ld	ra,8(sp)
    80001da0:	00013403          	ld	s0,0(sp)
    80001da4:	01010113          	addi	sp,sp,16
    80001da8:	00008067          	ret

0000000080001dac <_Znam>:

void *operator new[](size_t n)
{
    80001dac:	ff010113          	addi	sp,sp,-16
    80001db0:	00113423          	sd	ra,8(sp)
    80001db4:	00813023          	sd	s0,0(sp)
    80001db8:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001dbc:	fffff097          	auipc	ra,0xfffff
    80001dc0:	5d0080e7          	jalr	1488(ra) # 8000138c <_Z9mem_allocm>
}
    80001dc4:	00813083          	ld	ra,8(sp)
    80001dc8:	00013403          	ld	s0,0(sp)
    80001dcc:	01010113          	addi	sp,sp,16
    80001dd0:	00008067          	ret

0000000080001dd4 <_ZdlPv>:

void operator delete(void *p)
{
    if (p != nullptr)
    80001dd4:	02050663          	beqz	a0,80001e00 <_ZdlPv+0x2c>
{
    80001dd8:	ff010113          	addi	sp,sp,-16
    80001ddc:	00113423          	sd	ra,8(sp)
    80001de0:	00813023          	sd	s0,0(sp)
    80001de4:	01010413          	addi	s0,sp,16
        mem_free(p);
    80001de8:	fffff097          	auipc	ra,0xfffff
    80001dec:	5e4080e7          	jalr	1508(ra) # 800013cc <_Z8mem_freePv>
}
    80001df0:	00813083          	ld	ra,8(sp)
    80001df4:	00013403          	ld	s0,0(sp)
    80001df8:	01010113          	addi	sp,sp,16
    80001dfc:	00008067          	ret
    80001e00:	00008067          	ret

0000000080001e04 <_ZdaPv>:

void operator delete[](void *p)
{
    if (p != nullptr)
    80001e04:	02050663          	beqz	a0,80001e30 <_ZdaPv+0x2c>
{
    80001e08:	ff010113          	addi	sp,sp,-16
    80001e0c:	00113423          	sd	ra,8(sp)
    80001e10:	00813023          	sd	s0,0(sp)
    80001e14:	01010413          	addi	s0,sp,16
        mem_free(p);
    80001e18:	fffff097          	auipc	ra,0xfffff
    80001e1c:	5b4080e7          	jalr	1460(ra) # 800013cc <_Z8mem_freePv>
    80001e20:	00813083          	ld	ra,8(sp)
    80001e24:	00013403          	ld	s0,0(sp)
    80001e28:	01010113          	addi	sp,sp,16
    80001e2c:	00008067          	ret
    80001e30:	00008067          	ret

0000000080001e34 <_ZN6Thread10runWrapperEPv>:

int Thread::sleep (time_t) {
    return 0;
}

void Thread::runWrapper(void* thread){
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00113423          	sd	ra,8(sp)
    80001e3c:	00813023          	sd	s0,0(sp)
    80001e40:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*) thread;
    thr->run();
    80001e44:	00053783          	ld	a5,0(a0)
    80001e48:	0107b783          	ld	a5,16(a5)
    80001e4c:	000780e7          	jalr	a5
}
    80001e50:	00813083          	ld	ra,8(sp)
    80001e54:	00013403          	ld	s0,0(sp)
    80001e58:	01010113          	addi	sp,sp,16
    80001e5c:	00008067          	ret

0000000080001e60 <_ZN6ThreadD1Ev>:
Thread::~Thread () {
    80001e60:	fe010113          	addi	sp,sp,-32
    80001e64:	00113c23          	sd	ra,24(sp)
    80001e68:	00813823          	sd	s0,16(sp)
    80001e6c:	00913423          	sd	s1,8(sp)
    80001e70:	02010413          	addi	s0,sp,32
    80001e74:	00050493          	mv	s1,a0
    80001e78:	0000b797          	auipc	a5,0xb
    80001e7c:	d5078793          	addi	a5,a5,-688 # 8000cbc8 <_ZTV6Thread+0x10>
    80001e80:	00f53023          	sd	a5,0(a0)
    thread_exit();
    80001e84:	fffff097          	auipc	ra,0xfffff
    80001e88:	5ec080e7          	jalr	1516(ra) # 80001470 <_Z11thread_exitv>
    mem_free(this);
    80001e8c:	00048513          	mv	a0,s1
    80001e90:	fffff097          	auipc	ra,0xfffff
    80001e94:	53c080e7          	jalr	1340(ra) # 800013cc <_Z8mem_freePv>
}
    80001e98:	01813083          	ld	ra,24(sp)
    80001e9c:	01013403          	ld	s0,16(sp)
    80001ea0:	00813483          	ld	s1,8(sp)
    80001ea4:	02010113          	addi	sp,sp,32
    80001ea8:	00008067          	ret

0000000080001eac <_ZN6ThreadD0Ev>:
Thread::~Thread () {
    80001eac:	fe010113          	addi	sp,sp,-32
    80001eb0:	00113c23          	sd	ra,24(sp)
    80001eb4:	00813823          	sd	s0,16(sp)
    80001eb8:	00913423          	sd	s1,8(sp)
    80001ebc:	02010413          	addi	s0,sp,32
    80001ec0:	00050493          	mv	s1,a0
}
    80001ec4:	00000097          	auipc	ra,0x0
    80001ec8:	f9c080e7          	jalr	-100(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80001ecc:	00048513          	mv	a0,s1
    80001ed0:	00000097          	auipc	ra,0x0
    80001ed4:	f04080e7          	jalr	-252(ra) # 80001dd4 <_ZdlPv>
    80001ed8:	01813083          	ld	ra,24(sp)
    80001edc:	01013403          	ld	s0,16(sp)
    80001ee0:	00813483          	ld	s1,8(sp)
    80001ee4:	02010113          	addi	sp,sp,32
    80001ee8:	00008067          	ret

0000000080001eec <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore (unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore () {
    80001eec:	0000b797          	auipc	a5,0xb
    80001ef0:	d0478793          	addi	a5,a5,-764 # 8000cbf0 <_ZTV9Semaphore+0x10>
    80001ef4:	00f53023          	sd	a5,0(a0)
    if (myHandle != nullptr)
    80001ef8:	00853503          	ld	a0,8(a0)
    80001efc:	02050663          	beqz	a0,80001f28 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore () {
    80001f00:	ff010113          	addi	sp,sp,-16
    80001f04:	00113423          	sd	ra,8(sp)
    80001f08:	00813023          	sd	s0,0(sp)
    80001f0c:	01010413          	addi	s0,sp,16
    {
        sem_close(myHandle);
    80001f10:	fffff097          	auipc	ra,0xfffff
    80001f14:	660080e7          	jalr	1632(ra) # 80001570 <_Z9sem_closeP3SEM>
        myHandle = nullptr;
    }
}
    80001f18:	00813083          	ld	ra,8(sp)
    80001f1c:	00013403          	ld	s0,0(sp)
    80001f20:	01010113          	addi	sp,sp,16
    80001f24:	00008067          	ret
    80001f28:	00008067          	ret

0000000080001f2c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore () {
    80001f2c:	fe010113          	addi	sp,sp,-32
    80001f30:	00113c23          	sd	ra,24(sp)
    80001f34:	00813823          	sd	s0,16(sp)
    80001f38:	00913423          	sd	s1,8(sp)
    80001f3c:	02010413          	addi	s0,sp,32
    80001f40:	00050493          	mv	s1,a0
}
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	fa8080e7          	jalr	-88(ra) # 80001eec <_ZN9SemaphoreD1Ev>
    80001f4c:	00048513          	mv	a0,s1
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	e84080e7          	jalr	-380(ra) # 80001dd4 <_ZdlPv>
    80001f58:	01813083          	ld	ra,24(sp)
    80001f5c:	01013403          	ld	s0,16(sp)
    80001f60:	00813483          	ld	s1,8(sp)
    80001f64:	02010113          	addi	sp,sp,32
    80001f68:	00008067          	ret

0000000080001f6c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg): myHandle(0), body(body), arg(arg) { }
    80001f6c:	ff010113          	addi	sp,sp,-16
    80001f70:	00813423          	sd	s0,8(sp)
    80001f74:	01010413          	addi	s0,sp,16
    80001f78:	0000b797          	auipc	a5,0xb
    80001f7c:	c5078793          	addi	a5,a5,-944 # 8000cbc8 <_ZTV6Thread+0x10>
    80001f80:	00f53023          	sd	a5,0(a0)
    80001f84:	00053423          	sd	zero,8(a0)
    80001f88:	00b53823          	sd	a1,16(a0)
    80001f8c:	00c53c23          	sd	a2,24(a0)
    80001f90:	00813403          	ld	s0,8(sp)
    80001f94:	01010113          	addi	sp,sp,16
    80001f98:	00008067          	ret

0000000080001f9c <_ZN6ThreadC1Ev>:
Thread::Thread () {
    80001f9c:	ff010113          	addi	sp,sp,-16
    80001fa0:	00813423          	sd	s0,8(sp)
    80001fa4:	01010413          	addi	s0,sp,16
    80001fa8:	0000b797          	auipc	a5,0xb
    80001fac:	c2078793          	addi	a5,a5,-992 # 8000cbc8 <_ZTV6Thread+0x10>
    80001fb0:	00f53023          	sd	a5,0(a0)
    this->body = runWrapper;
    80001fb4:	00000797          	auipc	a5,0x0
    80001fb8:	e8078793          	addi	a5,a5,-384 # 80001e34 <_ZN6Thread10runWrapperEPv>
    80001fbc:	00f53823          	sd	a5,16(a0)
    this->arg = this;
    80001fc0:	00a53c23          	sd	a0,24(a0)
}
    80001fc4:	00813403          	ld	s0,8(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN6Thread5startEv>:
int Thread::start() {
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00113423          	sd	ra,8(sp)
    80001fd8:	00813023          	sd	s0,0(sp)
    80001fdc:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, body, arg);
    80001fe0:	01853603          	ld	a2,24(a0)
    80001fe4:	01053583          	ld	a1,16(a0)
    80001fe8:	00850513          	addi	a0,a0,8
    80001fec:	fffff097          	auipc	ra,0xfffff
    80001ff0:	410080e7          	jalr	1040(ra) # 800013fc <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001ff4:	00813083          	ld	ra,8(sp)
    80001ff8:	00013403          	ld	s0,0(sp)
    80001ffc:	01010113          	addi	sp,sp,16
    80002000:	00008067          	ret

0000000080002004 <_ZN6Thread11getThreadIdEv>:
int Thread::getThreadId (){
    80002004:	ff010113          	addi	sp,sp,-16
    80002008:	00113423          	sd	ra,8(sp)
    8000200c:	00813023          	sd	s0,0(sp)
    80002010:	01010413          	addi	s0,sp,16
    return thread_get_id();
    80002014:	fffff097          	auipc	ra,0xfffff
    80002018:	4d4080e7          	jalr	1236(ra) # 800014e8 <_Z13thread_get_idv>
}
    8000201c:	00813083          	ld	ra,8(sp)
    80002020:	00013403          	ld	s0,0(sp)
    80002024:	01010113          	addi	sp,sp,16
    80002028:	00008067          	ret

000000008000202c <_ZN6Thread4joinEv>:
void Thread::join() {
    8000202c:	ff010113          	addi	sp,sp,-16
    80002030:	00113423          	sd	ra,8(sp)
    80002034:	00813023          	sd	s0,0(sp)
    80002038:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    8000203c:	00853503          	ld	a0,8(a0)
    80002040:	fffff097          	auipc	ra,0xfffff
    80002044:	480080e7          	jalr	1152(ra) # 800014c0 <_Z11thread_joinP3TCB>
}
    80002048:	00813083          	ld	ra,8(sp)
    8000204c:	00013403          	ld	s0,0(sp)
    80002050:	01010113          	addi	sp,sp,16
    80002054:	00008067          	ret

0000000080002058 <_ZN6Thread8dispatchEv>:
void Thread::dispatch () {
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00113423          	sd	ra,8(sp)
    80002060:	00813023          	sd	s0,0(sp)
    80002064:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002068:	fffff097          	auipc	ra,0xfffff
    8000206c:	434080e7          	jalr	1076(ra) # 8000149c <_Z15thread_dispatchv>
}
    80002070:	00813083          	ld	ra,8(sp)
    80002074:	00013403          	ld	s0,0(sp)
    80002078:	01010113          	addi	sp,sp,16
    8000207c:	00008067          	ret

0000000080002080 <_ZN6Thread5sleepEm>:
int Thread::sleep (time_t) {
    80002080:	ff010113          	addi	sp,sp,-16
    80002084:	00813423          	sd	s0,8(sp)
    80002088:	01010413          	addi	s0,sp,16
}
    8000208c:	00000513          	li	a0,0
    80002090:	00813403          	ld	s0,8(sp)
    80002094:	01010113          	addi	sp,sp,16
    80002098:	00008067          	ret

000000008000209c <_ZN6Thread14setMaxThreadsTEi>:
void Thread::setMaxThreadsT(int num){
    8000209c:	ff010113          	addi	sp,sp,-16
    800020a0:	00113423          	sd	ra,8(sp)
    800020a4:	00813023          	sd	s0,0(sp)
    800020a8:	01010413          	addi	s0,sp,16
    setMaxThreads(num);
    800020ac:	fffff097          	auipc	ra,0xfffff
    800020b0:	468080e7          	jalr	1128(ra) # 80001514 <_Z13setMaxThreadsi>
}
    800020b4:	00813083          	ld	ra,8(sp)
    800020b8:	00013403          	ld	s0,0(sp)
    800020bc:	01010113          	addi	sp,sp,16
    800020c0:	00008067          	ret

00000000800020c4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore (unsigned init) {
    800020c4:	ff010113          	addi	sp,sp,-16
    800020c8:	00113423          	sd	ra,8(sp)
    800020cc:	00813023          	sd	s0,0(sp)
    800020d0:	01010413          	addi	s0,sp,16
    800020d4:	0000b797          	auipc	a5,0xb
    800020d8:	b1c78793          	addi	a5,a5,-1252 # 8000cbf0 <_ZTV9Semaphore+0x10>
    800020dc:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800020e0:	00850513          	addi	a0,a0,8
    800020e4:	fffff097          	auipc	ra,0xfffff
    800020e8:	458080e7          	jalr	1112(ra) # 8000153c <_Z8sem_openPP3SEMj>
}
    800020ec:	00813083          	ld	ra,8(sp)
    800020f0:	00013403          	ld	s0,0(sp)
    800020f4:	01010113          	addi	sp,sp,16
    800020f8:	00008067          	ret

00000000800020fc <_ZN9Semaphore4waitEv>:

int Semaphore::wait () {
    if (myHandle != nullptr) {
    800020fc:	00853503          	ld	a0,8(a0)
    80002100:	02050663          	beqz	a0,8000212c <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait () {
    80002104:	ff010113          	addi	sp,sp,-16
    80002108:	00113423          	sd	ra,8(sp)
    8000210c:	00813023          	sd	s0,0(sp)
    80002110:	01010413          	addi	s0,sp,16
        int ret = sem_wait(myHandle);
    80002114:	fffff097          	auipc	ra,0xfffff
    80002118:	48c080e7          	jalr	1164(ra) # 800015a0 <_Z8sem_waitP3SEM>
        return ret;
    }
    return -1;
}
    8000211c:	00813083          	ld	ra,8(sp)
    80002120:	00013403          	ld	s0,0(sp)
    80002124:	01010113          	addi	sp,sp,16
    80002128:	00008067          	ret
    return -1;
    8000212c:	fff00513          	li	a0,-1
}
    80002130:	00008067          	ret

0000000080002134 <_ZN9Semaphore6signalEv>:

int Semaphore::signal () {
    if (myHandle != nullptr) {
    80002134:	00853503          	ld	a0,8(a0)
    80002138:	02050663          	beqz	a0,80002164 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal () {
    8000213c:	ff010113          	addi	sp,sp,-16
    80002140:	00113423          	sd	ra,8(sp)
    80002144:	00813023          	sd	s0,0(sp)
    80002148:	01010413          	addi	s0,sp,16
        int ret = sem_signal(myHandle);
    8000214c:	fffff097          	auipc	ra,0xfffff
    80002150:	484080e7          	jalr	1156(ra) # 800015d0 <_Z10sem_signalP3SEM>
        return ret;
    }
    return -1;
}
    80002154:	00813083          	ld	ra,8(sp)
    80002158:	00013403          	ld	s0,0(sp)
    8000215c:	01010113          	addi	sp,sp,16
    80002160:	00008067          	ret
    return -1;
    80002164:	fff00513          	li	a0,-1
}
    80002168:	00008067          	ret

000000008000216c <_ZN7Console4getcEv>:

////////////////////CON/////////////////////////

char Console::getc () {
    8000216c:	ff010113          	addi	sp,sp,-16
    80002170:	00113423          	sd	ra,8(sp)
    80002174:	00813023          	sd	s0,0(sp)
    80002178:	01010413          	addi	s0,sp,16
    return ::getc();
    8000217c:	fffff097          	auipc	ra,0xfffff
    80002180:	4d8080e7          	jalr	1240(ra) # 80001654 <_Z4getcv>
}
    80002184:	00813083          	ld	ra,8(sp)
    80002188:	00013403          	ld	s0,0(sp)
    8000218c:	01010113          	addi	sp,sp,16
    80002190:	00008067          	ret

0000000080002194 <_ZN7Console4putcEc>:

void Console::putc(char c){
    80002194:	ff010113          	addi	sp,sp,-16
    80002198:	00113423          	sd	ra,8(sp)
    8000219c:	00813023          	sd	s0,0(sp)
    800021a0:	01010413          	addi	s0,sp,16
    ::putc(c);
    800021a4:	fffff097          	auipc	ra,0xfffff
    800021a8:	488080e7          	jalr	1160(ra) # 8000162c <_Z4putcc>
}
    800021ac:	00813083          	ld	ra,8(sp)
    800021b0:	00013403          	ld	s0,0(sp)
    800021b4:	01010113          	addi	sp,sp,16
    800021b8:	00008067          	ret

00000000800021bc <_ZN6Thread3runEv>:

    static void setMaxThreadsT(int num);

protected:
    Thread ();
    virtual void run () {};
    800021bc:	ff010113          	addi	sp,sp,-16
    800021c0:	00813423          	sd	s0,8(sp)
    800021c4:	01010413          	addi	s0,sp,16
    800021c8:	00813403          	ld	s0,8(sp)
    800021cc:	01010113          	addi	sp,sp,16
    800021d0:	00008067          	ret

00000000800021d4 <_Z41__static_initialization_and_destruction_0ii>:
    mc_sip(SIP_SSIP);
}

void Riscv::handleConsoleTrap() {
    console_handler();
    800021d4:	00100793          	li	a5,1
    800021d8:	00f50463          	beq	a0,a5,800021e0 <_Z41__static_initialization_and_destruction_0ii+0xc>
    800021dc:	00008067          	ret
    800021e0:	000107b7          	lui	a5,0x10
    800021e4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800021e8:	fef59ae3          	bne	a1,a5,800021dc <_Z41__static_initialization_and_destruction_0ii+0x8>
    800021ec:	fe010113          	addi	sp,sp,-32
    800021f0:	00113c23          	sd	ra,24(sp)
    800021f4:	00813823          	sd	s0,16(sp)
    800021f8:	00913423          	sd	s1,8(sp)
    800021fc:	01213023          	sd	s2,0(sp)
    80002200:	02010413          	addi	s0,sp,32
    int size, head, tail;
    char *buffer;
    SEM *spaces, *items;

public:
    void *operator new(size_t n) { return mem_alloc(n); }
    80002204:	02800513          	li	a0,40
    80002208:	fffff097          	auipc	ra,0xfffff
    8000220c:	184080e7          	jalr	388(ra) # 8000138c <_Z9mem_allocm>
    80002210:	00050493          	mv	s1,a0
    void *operator new[](size_t n) { return mem_alloc(n); }
    void operator delete(void *p) noexcept { mem_free(p); }
    void operator delete[](void *p) noexcept { mem_free(p); }
    Console(){
    80002214:	fff00793          	li	a5,-1
    80002218:	00f52023          	sw	a5,0(a0)
        this->size = 0;
    8000221c:	00052223          	sw	zero,4(a0)
        this->head = 0;
    80002220:	00052423          	sw	zero,8(a0)
        this->tail = 0;
    80002224:	00052623          	sw	zero,12(a0)
        buffer = new char[capacity];
    80002228:	40000513          	li	a0,1024
    8000222c:	00000097          	auipc	ra,0x0
    80002230:	b80080e7          	jalr	-1152(ra) # 80001dac <_Znam>
    80002234:	00a4b823          	sd	a0,16(s1)
public:

    void *operator new(size_t n){
//        return __mem_alloc(n);
//        return mem_alloc(sizeof(SEM) + sizeof(MEM::FullSpace));
        return MEM::memAlloc(sizeof(SEM) + sizeof(MEM::FullSpace));
    80002238:	03800513          	li	a0,56
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	8fc080e7          	jalr	-1796(ra) # 80002b38 <_ZN3MEM8memAllocEm>

    Elem *head, *tail;
    int size;

public:
    List() : head(0), tail(0), size(0) {}
    80002244:	00053423          	sd	zero,8(a0)
    80002248:	00053823          	sd	zero,16(a0)
    8000224c:	00052c23          	sw	zero,24(a0)
//        mem_free(p);
        MEM::memFree(p);
    }

    SEM(int value) {
        this->value = value;
    80002250:	40000793          	li	a5,1024
    80002254:	00f52023          	sw	a5,0(a0)
        this->onHold = false;
    80002258:	00050223          	sb	zero,4(a0)
        spaces = new SEM(capacity);
    8000225c:	00a4bc23          	sd	a0,24(s1)
        return MEM::memAlloc(sizeof(SEM) + sizeof(MEM::FullSpace));
    80002260:	03800513          	li	a0,56
    80002264:	00001097          	auipc	ra,0x1
    80002268:	8d4080e7          	jalr	-1836(ra) # 80002b38 <_ZN3MEM8memAllocEm>
    8000226c:	00053423          	sd	zero,8(a0)
    80002270:	00053823          	sd	zero,16(a0)
    80002274:	00052c23          	sw	zero,24(a0)
        this->value = value;
    80002278:	00052023          	sw	zero,0(a0)
        this->onHold = false;
    8000227c:	00050223          	sb	zero,4(a0)
        items = new SEM(0);
    80002280:	02a4b023          	sd	a0,32(s1)
Console *console = new Console();
    80002284:	0000b797          	auipc	a5,0xb
    80002288:	c697be23          	sd	s1,-900(a5) # 8000cf00 <console>
    8000228c:	01813083          	ld	ra,24(sp)
    80002290:	01013403          	ld	s0,16(sp)
    80002294:	00813483          	ld	s1,8(sp)
    80002298:	00013903          	ld	s2,0(sp)
    8000229c:	02010113          	addi	sp,sp,32
    800022a0:	00008067          	ret
    800022a4:	00050913          	mv	s2,a0
    void operator delete(void *p) noexcept { mem_free(p); }
    800022a8:	00048513          	mv	a0,s1
    800022ac:	fffff097          	auipc	ra,0xfffff
    800022b0:	120080e7          	jalr	288(ra) # 800013cc <_Z8mem_freePv>
    800022b4:	00090513          	mv	a0,s2
    800022b8:	0000c097          	auipc	ra,0xc
    800022bc:	dc0080e7          	jalr	-576(ra) # 8000e078 <_Unwind_Resume>

00000000800022c0 <_ZN5Riscv10popSppSpieEv>:
void Riscv::popSppSpie() {
    800022c0:	ff010113          	addi	sp,sp,-16
    800022c4:	00813423          	sd	s0,8(sp)
    800022c8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(1 << 8)); //iz kog korisnickog rezima je skoceno ovde
    800022cc:	10000793          	li	a5,256
    800022d0:	1007b073          	csrc	sstatus,a5
    __asm__ volatile ("csrw sepc, ra"); //upis toga gde treba program da se vrati nakon obrade sistemskog poziva
    800022d4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret"); //sam povratak
    800022d8:	10200073          	sret
}
    800022dc:	00813403          	ld	s0,8(sp)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret

00000000800022e8 <_ZN5Riscv20handleSupervisorTrapEv>:
void Riscv::handleSupervisorTrap() {
    800022e8:	fa010113          	addi	sp,sp,-96
    800022ec:	04113c23          	sd	ra,88(sp)
    800022f0:	04813823          	sd	s0,80(sp)
    800022f4:	04913423          	sd	s1,72(sp)
    800022f8:	05213023          	sd	s2,64(sp)
    800022fc:	03313c23          	sd	s3,56(sp)
    80002300:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002304:	142027f3          	csrr	a5,scause
    80002308:	faf43c23          	sd	a5,-72(s0)
    return scause;
    8000230c:	fb843483          	ld	s1,-72(s0)
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80002310:	ff848713          	addi	a4,s1,-8
    80002314:	00100793          	li	a5,1
    80002318:	02e7f263          	bgeu	a5,a4,8000233c <_ZN5Riscv20handleSupervisorTrapEv+0x54>
        const char *error = "SCAUSE: ";
    8000231c:	00008917          	auipc	s2,0x8
    80002320:	d1c90913          	addi	s2,s2,-740 # 8000a038 <CONSOLE_STATUS+0x28>
        while (*error){
    80002324:	00094503          	lbu	a0,0(s2)
    80002328:	2a050a63          	beqz	a0,800025dc <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
            putc(*error++);
    8000232c:	00190913          	addi	s2,s2,1
    80002330:	fffff097          	auipc	ra,0xfffff
    80002334:	2fc080e7          	jalr	764(ra) # 8000162c <_Z4putcc>
        while (*error){
    80002338:	fedff06f          	j	80002324 <_ZN5Riscv20handleSupervisorTrapEv+0x3c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000233c:	141027f3          	csrr	a5,sepc
    80002340:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002344:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80002348:	00478793          	addi	a5,a5,4
    8000234c:	faf43023          	sd	a5,-96(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002350:	100027f3          	csrr	a5,sstatus
    80002354:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002358:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    8000235c:	faf43423          	sd	a5,-88(s0)
        volatile uint64 sys_call_id = 0;
    80002360:	fa043823          	sd	zero,-80(s0)
        asm volatile("ld %0, 80(fp)":"=r"(sys_call_id));
    80002364:	05043783          	ld	a5,80(s0)
    80002368:	faf43823          	sd	a5,-80(s0)
        switch (sys_call_id) {
    8000236c:	fb043783          	ld	a5,-80(s0)
    80002370:	04200713          	li	a4,66
    80002374:	02f76c63          	bltu	a4,a5,800023ac <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
    80002378:	00279793          	slli	a5,a5,0x2
    8000237c:	00008717          	auipc	a4,0x8
    80002380:	cc870713          	addi	a4,a4,-824 # 8000a044 <CONSOLE_STATUS+0x34>
    80002384:	00e787b3          	add	a5,a5,a4
    80002388:	0007a783          	lw	a5,0(a5)
    8000238c:	00e787b3          	add	a5,a5,a4
    80002390:	00078067          	jr	a5
                __asm__ volatile("ld s1, 11*8(fp)");
    80002394:	05843483          	ld	s1,88(s0)
                __asm__ volatile("mv %0, s1": "=r"(size_mem));
    80002398:	00048513          	mv	a0,s1
                MEM::memAlloc(size_mem);
    8000239c:	00651513          	slli	a0,a0,0x6
    800023a0:	00000097          	auipc	ra,0x0
    800023a4:	798080e7          	jalr	1944(ra) # 80002b38 <_ZN3MEM8memAllocEm>
                __asm__ volatile("sd a0, 10*8(fp)");
    800023a8:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    800023ac:	fa843783          	ld	a5,-88(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023b0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800023b4:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023b8:	14179073          	csrw	sepc,a5
}
    800023bc:	05813083          	ld	ra,88(sp)
    800023c0:	05013403          	ld	s0,80(sp)
    800023c4:	04813483          	ld	s1,72(sp)
    800023c8:	04013903          	ld	s2,64(sp)
    800023cc:	03813983          	ld	s3,56(sp)
    800023d0:	06010113          	addi	sp,sp,96
    800023d4:	00008067          	ret
                __asm__ volatile ("ld %[pointer], 11 * 8(fp)": [pointer] "=r"(pointer));
    800023d8:	05843503          	ld	a0,88(s0)
                MEM::memFree(pointer);
    800023dc:	00001097          	auipc	ra,0x1
    800023e0:	96c080e7          	jalr	-1684(ra) # 80002d48 <_ZN3MEM7memFreeEPv>
                __asm__ volatile("sd a0, 10*8(fp)");
    800023e4:	04a43823          	sd	a0,80(s0)
                break;
    800023e8:	fc5ff06f          	j	800023ac <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
                __asm__ volatile ("ld %[handle], 11 * 8(fp)": [handle] "=r"(handle));
    800023ec:	05843983          	ld	s3,88(s0)
                __asm__ volatile ("ld %[body], 12 * 8(fp)": [body] "=r"(body));
    800023f0:	06043503          	ld	a0,96(s0)
                __asm__ volatile ("ld %[arg], 13 * 8(fp)"   : [arg] "=r"(arg));
    800023f4:	06843583          	ld	a1,104(s0)
                __asm__ volatile ("ld %[stack], 14 * 8(fp)"   : [stack] "=r"(stack));
    800023f8:	07043603          	ld	a2,112(s0)
                if (handle == nullptr || body == nullptr || stack == nullptr) ret = -1;
    800023fc:	0a098e63          	beqz	s3,800024b8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
    80002400:	0c050263          	beqz	a0,800024c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
    80002404:	0c060463          	beqz	a2,800024cc <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
                    TCB* tcb = TCB::createThread(body, arg, stack);
    80002408:	fffff097          	auipc	ra,0xfffff
    8000240c:	538080e7          	jalr	1336(ra) # 80001940 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002410:	00050913          	mv	s2,a0
                    if (tcb == nullptr) ret = -1;
    80002414:	0c050063          	beqz	a0,800024d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
                        *handle = tcb;
    80002418:	00a9b023          	sd	a0,0(s3)
                        if(TCB::maxThreads != 0){
    8000241c:	0000b797          	auipc	a5,0xb
    80002420:	a6c7b783          	ld	a5,-1428(a5) # 8000ce88 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002424:	0007a483          	lw	s1,0(a5)
    80002428:	08048263          	beqz	s1,800024ac <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                            if(Scheduler::getSchSize() > (TCB::maxThreads - 1)){
    8000242c:	00000097          	auipc	ra,0x0
    80002430:	5a8080e7          	jalr	1448(ra) # 800029d4 <_ZN9Scheduler10getSchSizeEv>
    80002434:	0000b797          	auipc	a5,0xb
    80002438:	a547b783          	ld	a5,-1452(a5) # 8000ce88 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000243c:	0007a783          	lw	a5,0(a5)
    80002440:	04f54c63          	blt	a0,a5,80002498 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                                TCB::blocked->addLast(*handle);
    80002444:	0000b797          	auipc	a5,0xb
    80002448:	a1c7b783          	ld	a5,-1508(a5) # 8000ce60 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000244c:	0007b483          	ld	s1,0(a5)
    80002450:	0009b903          	ld	s2,0(s3)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80002454:	01000513          	li	a0,16
    80002458:	00000097          	auipc	ra,0x0
    8000245c:	92c080e7          	jalr	-1748(ra) # 80001d84 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002460:	01253023          	sd	s2,0(a0)
    80002464:	00053423          	sd	zero,8(a0)
        size++;
    80002468:	0104a703          	lw	a4,16(s1)
    8000246c:	0017071b          	addiw	a4,a4,1
    80002470:	00e4a823          	sw	a4,16(s1)
        if (tail)
    80002474:	0084b703          	ld	a4,8(s1)
    80002478:	00070a63          	beqz	a4,8000248c <_ZN5Riscv20handleSupervisorTrapEv+0x1a4>
        {
            tail->next = elem;
    8000247c:	00a73423          	sd	a0,8(a4)
            tail = elem;
    80002480:	00a4b423          	sd	a0,8(s1)
                int ret = 0;
    80002484:	00000493          	li	s1,0
        } else
        {
            head = tail = elem;
        }
    }
    80002488:	0340006f          	j	800024bc <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
            head = tail = elem;
    8000248c:	00a4b423          	sd	a0,8(s1)
    80002490:	00a4b023          	sd	a0,0(s1)
    80002494:	ff1ff06f          	j	80002484 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                                Scheduler::put(tcb);
    80002498:	00090513          	mv	a0,s2
    8000249c:	00000097          	auipc	ra,0x0
    800024a0:	5d8080e7          	jalr	1496(ra) # 80002a74 <_ZN9Scheduler3putEP3TCB>
                int ret = 0;
    800024a4:	00000493          	li	s1,0
    800024a8:	0140006f          	j	800024bc <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                        Scheduler::put(tcb); // sa ovim se startuje nit
    800024ac:	00000097          	auipc	ra,0x0
    800024b0:	5c8080e7          	jalr	1480(ra) # 80002a74 <_ZN9Scheduler3putEP3TCB>
    800024b4:	0080006f          	j	800024bc <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                if (handle == nullptr || body == nullptr || stack == nullptr) ret = -1;
    800024b8:	fff00493          	li	s1,-1
                __asm__ volatile("sd %0, 10*8(fp)"::"r"(ret));
    800024bc:	04943823          	sd	s1,80(s0)
                break;
    800024c0:	eedff06f          	j	800023ac <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
                if (handle == nullptr || body == nullptr || stack == nullptr) ret = -1;
    800024c4:	fff00493          	li	s1,-1
    800024c8:	ff5ff06f          	j	800024bc <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    800024cc:	fff00493          	li	s1,-1
    800024d0:	fedff06f          	j	800024bc <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                    if (tcb == nullptr) ret = -1;
    800024d4:	fff00493          	li	s1,-1
    800024d8:	fe5ff06f          	j	800024bc <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                TCB::threadExit();
    800024dc:	fffff097          	auipc	ra,0xfffff
    800024e0:	6c4080e7          	jalr	1732(ra) # 80001ba0 <_ZN3TCB10threadExitEv>
                __asm__ volatile("sd a0, 10*8(fp)");
    800024e4:	04a43823          	sd	a0,80(s0)
                break;
    800024e8:	ec5ff06f          	j	800023ac <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
                TCB::dispatch();
    800024ec:	fffff097          	auipc	ra,0xfffff
    800024f0:	574080e7          	jalr	1396(ra) # 80001a60 <_ZN3TCB8dispatchEv>
                break;
    800024f4:	eb9ff06f          	j	800023ac <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
                __asm__ volatile ("ld %[handle1], 11 * 8(fp)": [handle1] "=r"(handle1));
    800024f8:	05843503          	ld	a0,88(s0)
                TCB::threadJoin(handle1);
    800024fc:	fffff097          	auipc	ra,0xfffff
    80002500:	7d4080e7          	jalr	2004(ra) # 80001cd0 <_ZN3TCB10threadJoinEPS_>
                break;
    80002504:	ea9ff06f          	j	800023ac <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
                TCB::running->getThreadId();
    80002508:	0000b797          	auipc	a5,0xb
    8000250c:	9707b783          	ld	a5,-1680(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002510:	0007b503          	ld	a0,0(a5)
    80002514:	fffff097          	auipc	ra,0xfffff
    80002518:	5b4080e7          	jalr	1460(ra) # 80001ac8 <_ZN3TCB11getThreadIdEv>
                __asm__ volatile("sd a0, 10*8(fp)");
    8000251c:	04a43823          	sd	a0,80(s0)
                break;
    80002520:	e8dff06f          	j	800023ac <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
                __asm__ volatile ("ld %[numOfThreads], 11 * 8(fp)": [numOfThreads] "=r"(numOfThreads));
    80002524:	05843503          	ld	a0,88(s0)
                TCB::setMaxThreads(numOfThreads);
    80002528:	0005051b          	sext.w	a0,a0
    8000252c:	fffff097          	auipc	ra,0xfffff
    80002530:	3d4080e7          	jalr	980(ra) # 80001900 <_ZN3TCB13setMaxThreadsEi>
                __asm__ volatile("sd a0, 10*8(fp)");
    80002534:	04a43823          	sd	a0,80(s0)
                break;
    80002538:	e75ff06f          	j	800023ac <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
                __asm__ volatile ("ld %[handle2], 11 * 8(fp)": [handle2] "=r"(handle2));
    8000253c:	05843483          	ld	s1,88(s0)
                __asm__ volatile ("ld %[init], 12 * 8(fp)": [init] "=r"(init));
    80002540:	06043583          	ld	a1,96(s0)
    80002544:	0005859b          	sext.w	a1,a1
                if (handle2 == nullptr) ret = -1;
    80002548:	02048063          	beqz	s1,80002568 <_ZN5Riscv20handleSupervisorTrapEv+0x280>
                    SEM::semOpen(handle2, init);
    8000254c:	00048513          	mv	a0,s1
    80002550:	00000097          	auipc	ra,0x0
    80002554:	25c080e7          	jalr	604(ra) # 800027ac <_ZN3SEM7semOpenEPPS_j>
                    if (*handle2 == nullptr) ret = -1;
    80002558:	0004b783          	ld	a5,0(s1)
    8000255c:	00078c63          	beqz	a5,80002574 <_ZN5Riscv20handleSupervisorTrapEv+0x28c>
                int ret = 0;
    80002560:	00000793          	li	a5,0
    80002564:	0080006f          	j	8000256c <_ZN5Riscv20handleSupervisorTrapEv+0x284>
                if (handle2 == nullptr) ret = -1;
    80002568:	fff00793          	li	a5,-1
                __asm__ volatile("sd %0, 10*8(fp)"::"r"(ret));
    8000256c:	04f43823          	sd	a5,80(s0)
                break;
    80002570:	e3dff06f          	j	800023ac <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
                    if (*handle2 == nullptr) ret = -1;
    80002574:	fff00793          	li	a5,-1
    80002578:	ff5ff06f          	j	8000256c <_ZN5Riscv20handleSupervisorTrapEv+0x284>
                __asm__ volatile ("ld %[handle3], 11 * 8(fp)": [handle3] "=r"(handle3));
    8000257c:	05843503          	ld	a0,88(s0)
                SEM::semClose(handle3);
    80002580:	00000097          	auipc	ra,0x0
    80002584:	288080e7          	jalr	648(ra) # 80002808 <_ZN3SEM8semCloseEPS_>
                __asm__ volatile("sd a0, 10*8(fp)");
    80002588:	04a43823          	sd	a0,80(s0)
                break;
    8000258c:	e21ff06f          	j	800023ac <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
                __asm__ volatile ("ld %[id], 11 * 8(fp)": [id] "=r"(id));
    80002590:	05843503          	ld	a0,88(s0)
                SEM::semWait(id);
    80002594:	00000097          	auipc	ra,0x0
    80002598:	34c080e7          	jalr	844(ra) # 800028e0 <_ZN3SEM7semWaitEPS_>
                __asm__ volatile("sd a0, 10*8(fp)");
    8000259c:	04a43823          	sd	a0,80(s0)
                break;
    800025a0:	e0dff06f          	j	800023ac <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
                __asm__ volatile ("ld %[id1], 11 * 8(fp)": [id1] "=r"(id1));
    800025a4:	05843503          	ld	a0,88(s0)
                SEM::semSignal(id1);
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	390080e7          	jalr	912(ra) # 80002938 <_ZN3SEM9semSignalEPS_>
                __asm__ volatile("sd a0, 10*8(fp)");
    800025b0:	04a43823          	sd	a0,80(s0)
                break;
    800025b4:	df9ff06f          	j	800023ac <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
                __getc();
    800025b8:	00007097          	auipc	ra,0x7
    800025bc:	d30080e7          	jalr	-720(ra) # 800092e8 <__getc>
                __asm__ volatile("sd a0, 10*8(fp)");
    800025c0:	04a43823          	sd	a0,80(s0)
                break;
    800025c4:	de9ff06f          	j	800023ac <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
                __asm__ volatile ("ld %[c], 11 * 8(fp)": [c] "=r"(c));
    800025c8:	05843503          	ld	a0,88(s0)
                __putc(c);
    800025cc:	0ff57513          	andi	a0,a0,255
    800025d0:	00007097          	auipc	ra,0x7
    800025d4:	cdc080e7          	jalr	-804(ra) # 800092ac <__putc>
                break;
    800025d8:	dd5ff06f          	j	800023ac <_ZN5Riscv20handleSupervisorTrapEv+0xc4>
        putc('0' + scause);
    800025dc:	0304851b          	addiw	a0,s1,48
    800025e0:	0ff57513          	andi	a0,a0,255
    800025e4:	fffff097          	auipc	ra,0xfffff
    800025e8:	048080e7          	jalr	72(ra) # 8000162c <_Z4putcc>
        putc('\n');
    800025ec:	00a00513          	li	a0,10
    800025f0:	fffff097          	auipc	ra,0xfffff
    800025f4:	03c080e7          	jalr	60(ra) # 8000162c <_Z4putcc>
        while(true) {
    800025f8:	0000006f          	j	800025f8 <_ZN5Riscv20handleSupervisorTrapEv+0x310>

00000000800025fc <_ZN5Riscv15handleTimerTrapEv>:
void Riscv::handleTimerTrap() {
    800025fc:	ff010113          	addi	sp,sp,-16
    80002600:	00813423          	sd	s0,8(sp)
    80002604:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002608:	00200793          	li	a5,2
    8000260c:	1447b073          	csrc	sip,a5
}
    80002610:	00813403          	ld	s0,8(sp)
    80002614:	01010113          	addi	sp,sp,16
    80002618:	00008067          	ret

000000008000261c <_ZN5Riscv17handleConsoleTrapEv>:
void Riscv::handleConsoleTrap() {
    8000261c:	ff010113          	addi	sp,sp,-16
    80002620:	00113423          	sd	ra,8(sp)
    80002624:	00813023          	sd	s0,0(sp)
    80002628:	01010413          	addi	s0,sp,16
    console_handler();
    8000262c:	00007097          	auipc	ra,0x7
    80002630:	cf4080e7          	jalr	-780(ra) # 80009320 <console_handler>
    80002634:	00813083          	ld	ra,8(sp)
    80002638:	00013403          	ld	s0,0(sp)
    8000263c:	01010113          	addi	sp,sp,16
    80002640:	00008067          	ret

0000000080002644 <_GLOBAL__sub_I__ZN5Riscv10mainThreadE>:
    80002644:	ff010113          	addi	sp,sp,-16
    80002648:	00113423          	sd	ra,8(sp)
    8000264c:	00813023          	sd	s0,0(sp)
    80002650:	01010413          	addi	s0,sp,16
    80002654:	000105b7          	lui	a1,0x10
    80002658:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000265c:	00100513          	li	a0,1
    80002660:	00000097          	auipc	ra,0x0
    80002664:	b74080e7          	jalr	-1164(ra) # 800021d4 <_Z41__static_initialization_and_destruction_0ii>
    80002668:	00813083          	ld	ra,8(sp)
    8000266c:	00013403          	ld	s0,0(sp)
    80002670:	01010113          	addi	sp,sp,16
    80002674:	00008067          	ret

0000000080002678 <_ZN3SEM5blockEv>:
#include "../h/sem.h"
#include "../h/riscv.h"

void SEM::block(){
    80002678:	fd010113          	addi	sp,sp,-48
    8000267c:	02113423          	sd	ra,40(sp)
    80002680:	02813023          	sd	s0,32(sp)
    80002684:	00913c23          	sd	s1,24(sp)
    80002688:	01213823          	sd	s2,16(sp)
    8000268c:	01313423          	sd	s3,8(sp)
    80002690:	01413023          	sd	s4,0(sp)
    80002694:	03010413          	addi	s0,sp,48
    80002698:	00050913          	mv	s2,a0
    TCB* current = TCB::running;
    8000269c:	0000a797          	auipc	a5,0xa
    800026a0:	7dc7b783          	ld	a5,2012(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x30>
    800026a4:	0007ba03          	ld	s4,0(a5)
    TCB* next = Scheduler::get();
    800026a8:	00000097          	auipc	ra,0x0
    800026ac:	34c080e7          	jalr	844(ra) # 800029f4 <_ZN9Scheduler3getEv>
    if(next != nullptr){
    800026b0:	04050c63          	beqz	a0,80002708 <_ZN3SEM5blockEv+0x90>
    800026b4:	00050493          	mv	s1,a0
        blocked.addLast(current);
    800026b8:	00890993          	addi	s3,s2,8
        Elem *elem = new Elem(data, 0);
    800026bc:	01000513          	li	a0,16
    800026c0:	fffff097          	auipc	ra,0xfffff
    800026c4:	6c4080e7          	jalr	1732(ra) # 80001d84 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800026c8:	01453023          	sd	s4,0(a0)
    800026cc:	00053423          	sd	zero,8(a0)
        size++;
    800026d0:	0109a783          	lw	a5,16(s3)
    800026d4:	0017879b          	addiw	a5,a5,1
    800026d8:	00f9a823          	sw	a5,16(s3)
        if (tail)
    800026dc:	0089b783          	ld	a5,8(s3)
    800026e0:	04078463          	beqz	a5,80002728 <_ZN3SEM5blockEv+0xb0>
            tail->next = elem;
    800026e4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800026e8:	00a9b423          	sd	a0,8(s3)
        TCB::running=next;
    800026ec:	0000a797          	auipc	a5,0xa
    800026f0:	78c7b783          	ld	a5,1932(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x30>
    800026f4:	0097b023          	sd	s1,0(a5)
        TCB::contextSwitch(&current->context,&next->context);
    800026f8:	00848593          	addi	a1,s1,8
    800026fc:	008a0513          	addi	a0,s4,8
    80002700:	fffff097          	auipc	ra,0xfffff
    80002704:	c58080e7          	jalr	-936(ra) # 80001358 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    }
}
    80002708:	02813083          	ld	ra,40(sp)
    8000270c:	02013403          	ld	s0,32(sp)
    80002710:	01813483          	ld	s1,24(sp)
    80002714:	01013903          	ld	s2,16(sp)
    80002718:	00813983          	ld	s3,8(sp)
    8000271c:	00013a03          	ld	s4,0(sp)
    80002720:	03010113          	addi	sp,sp,48
    80002724:	00008067          	ret
            head = tail = elem;
    80002728:	00a9b423          	sd	a0,8(s3)
    8000272c:	00a93423          	sd	a0,8(s2)
    80002730:	fbdff06f          	j	800026ec <_ZN3SEM5blockEv+0x74>

0000000080002734 <_ZN3SEM7deblockEv>:

void SEM::deblock(){
    80002734:	fe010113          	addi	sp,sp,-32
    80002738:	00113c23          	sd	ra,24(sp)
    8000273c:	00813823          	sd	s0,16(sp)
    80002740:	00913423          	sd	s1,8(sp)
    80002744:	02010413          	addi	s0,sp,32
    80002748:	00050793          	mv	a5,a0
    TCB* deblockedThread = blocked.removeFirst();
    8000274c:	00850713          	addi	a4,a0,8
        if (!head) { return 0; }
    80002750:	00853503          	ld	a0,8(a0)
    80002754:	04050863          	beqz	a0,800027a4 <_ZN3SEM7deblockEv+0x70>
        head = head->next;
    80002758:	00853683          	ld	a3,8(a0)
    8000275c:	00d7b423          	sd	a3,8(a5)
        size--;
    80002760:	0187a783          	lw	a5,24(a5)
    80002764:	fff7879b          	addiw	a5,a5,-1
    80002768:	00f72823          	sw	a5,16(a4)
        if (!head) { tail = 0; }
    8000276c:	02068863          	beqz	a3,8000279c <_ZN3SEM7deblockEv+0x68>
        T *ret = elem->data;
    80002770:	00053483          	ld	s1,0(a0)
        delete elem;
    80002774:	fffff097          	auipc	ra,0xfffff
    80002778:	660080e7          	jalr	1632(ra) # 80001dd4 <_ZdlPv>
    Scheduler::put(deblockedThread);
    8000277c:	00048513          	mv	a0,s1
    80002780:	00000097          	auipc	ra,0x0
    80002784:	2f4080e7          	jalr	756(ra) # 80002a74 <_ZN9Scheduler3putEP3TCB>
}
    80002788:	01813083          	ld	ra,24(sp)
    8000278c:	01013403          	ld	s0,16(sp)
    80002790:	00813483          	ld	s1,8(sp)
    80002794:	02010113          	addi	sp,sp,32
    80002798:	00008067          	ret
        if (!head) { tail = 0; }
    8000279c:	00073423          	sd	zero,8(a4)
    800027a0:	fd1ff06f          	j	80002770 <_ZN3SEM7deblockEv+0x3c>
        if (!head) { return 0; }
    800027a4:	00050493          	mv	s1,a0
    800027a8:	fd5ff06f          	j	8000277c <_ZN3SEM7deblockEv+0x48>

00000000800027ac <_ZN3SEM7semOpenEPPS_j>:

sem_t SEM::semOpen(sem_t *handle, unsigned init){
    800027ac:	fe010113          	addi	sp,sp,-32
    800027b0:	00113c23          	sd	ra,24(sp)
    800027b4:	00813823          	sd	s0,16(sp)
    800027b8:	00913423          	sd	s1,8(sp)
    800027bc:	01213023          	sd	s2,0(sp)
    800027c0:	02010413          	addi	s0,sp,32
    800027c4:	00050493          	mv	s1,a0
    800027c8:	00058913          	mv	s2,a1
public:

    void *operator new(size_t n){
//        return __mem_alloc(n);
//        return mem_alloc(sizeof(SEM) + sizeof(MEM::FullSpace));
        return MEM::memAlloc(sizeof(SEM) + sizeof(MEM::FullSpace));
    800027cc:	03800513          	li	a0,56
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	368080e7          	jalr	872(ra) # 80002b38 <_ZN3MEM8memAllocEm>
    List() : head(0), tail(0), size(0) {}
    800027d8:	00053423          	sd	zero,8(a0)
    800027dc:	00053823          	sd	zero,16(a0)
    800027e0:	00052c23          	sw	zero,24(a0)
//        mem_free(p);
        MEM::memFree(p);
    }

    SEM(int value) {
        this->value = value;
    800027e4:	01252023          	sw	s2,0(a0)
        this->onHold = false;
    800027e8:	00050223          	sb	zero,4(a0)
    *handle = new SEM(init);
    800027ec:	00a4b023          	sd	a0,0(s1)
//    *handle = (SEM*)MEM::memAlloc((sizeof(SEM)+ sizeof(MEM::FullSpace));
    if(*handle) return *handle;
    else return nullptr;
}
    800027f0:	01813083          	ld	ra,24(sp)
    800027f4:	01013403          	ld	s0,16(sp)
    800027f8:	00813483          	ld	s1,8(sp)
    800027fc:	00013903          	ld	s2,0(sp)
    80002800:	02010113          	addi	sp,sp,32
    80002804:	00008067          	ret

0000000080002808 <_ZN3SEM8semCloseEPS_>:
int SEM::semClose(sem_t handle){ //nisam siguran da li dobro dealocira

    if(handle != nullptr){
    80002808:	0c050463          	beqz	a0,800028d0 <_ZN3SEM8semCloseEPS_+0xc8>
int SEM::semClose(sem_t handle){ //nisam siguran da li dobro dealocira
    8000280c:	fd010113          	addi	sp,sp,-48
    80002810:	02113423          	sd	ra,40(sp)
    80002814:	02813023          	sd	s0,32(sp)
    80002818:	00913c23          	sd	s1,24(sp)
    8000281c:	01213823          	sd	s2,16(sp)
    80002820:	01313423          	sd	s3,8(sp)
    80002824:	01413023          	sd	s4,0(sp)
    80002828:	03010413          	addi	s0,sp,48
    8000282c:	00050493          	mv	s1,a0
        if(!handle->onHold){
    80002830:	00454783          	lbu	a5,4(a0)
    80002834:	0a079263          	bnez	a5,800028d8 <_ZN3SEM8semCloseEPS_+0xd0>
            handle->onHold = true;
    80002838:	00100793          	li	a5,1
    8000283c:	00f50223          	sb	a5,4(a0)
            handle->value = 0;
    80002840:	00052023          	sw	zero,0(a0)
    int getSize(){ return size; }
    80002844:	01852a03          	lw	s4,24(a0)
            int n = handle->blocked.getSize();
            for(int i=0;i<n;i++){
    80002848:	00000913          	li	s2,0
    8000284c:	0240006f          	j	80002870 <_ZN3SEM8semCloseEPS_+0x68>
        if (!head) { tail = 0; }
    80002850:	0004b823          	sd	zero,16(s1)
        T *ret = elem->data;
    80002854:	00053983          	ld	s3,0(a0)
        delete elem;
    80002858:	fffff097          	auipc	ra,0xfffff
    8000285c:	57c080e7          	jalr	1404(ra) # 80001dd4 <_ZdlPv>
                TCB *element = handle->blocked.removeFirst();
                Scheduler::put(element);
    80002860:	00098513          	mv	a0,s3
    80002864:	00000097          	auipc	ra,0x0
    80002868:	210080e7          	jalr	528(ra) # 80002a74 <_ZN9Scheduler3putEP3TCB>
            for(int i=0;i<n;i++){
    8000286c:	0019091b          	addiw	s2,s2,1
    80002870:	03495863          	bge	s2,s4,800028a0 <_ZN3SEM8semCloseEPS_+0x98>
        if (!head) { return 0; }
    80002874:	0084b503          	ld	a0,8(s1)
    80002878:	02050063          	beqz	a0,80002898 <_ZN3SEM8semCloseEPS_+0x90>
        head = head->next;
    8000287c:	00853683          	ld	a3,8(a0)
    80002880:	00d4b423          	sd	a3,8(s1)
        size--;
    80002884:	0184a783          	lw	a5,24(s1)
    80002888:	fff7879b          	addiw	a5,a5,-1
    8000288c:	00f4ac23          	sw	a5,24(s1)
        if (!head) { tail = 0; }
    80002890:	fc0692e3          	bnez	a3,80002854 <_ZN3SEM8semCloseEPS_+0x4c>
    80002894:	fbdff06f          	j	80002850 <_ZN3SEM8semCloseEPS_+0x48>
        if (!head) { return 0; }
    80002898:	00050993          	mv	s3,a0
    8000289c:	fc5ff06f          	j	80002860 <_ZN3SEM8semCloseEPS_+0x58>
            }
            MEM::memFree(handle);
    800028a0:	00048513          	mv	a0,s1
    800028a4:	00000097          	auipc	ra,0x0
    800028a8:	4a4080e7          	jalr	1188(ra) # 80002d48 <_ZN3MEM7memFreeEPv>
            return 0;
    800028ac:	00000513          	li	a0,0
            return -1;
        }
    }else{
        return -1;
    }
}
    800028b0:	02813083          	ld	ra,40(sp)
    800028b4:	02013403          	ld	s0,32(sp)
    800028b8:	01813483          	ld	s1,24(sp)
    800028bc:	01013903          	ld	s2,16(sp)
    800028c0:	00813983          	ld	s3,8(sp)
    800028c4:	00013a03          	ld	s4,0(sp)
    800028c8:	03010113          	addi	sp,sp,48
    800028cc:	00008067          	ret
        return -1;
    800028d0:	fff00513          	li	a0,-1
}
    800028d4:	00008067          	ret
            return -1;
    800028d8:	fff00513          	li	a0,-1
    800028dc:	fd5ff06f          	j	800028b0 <_ZN3SEM8semCloseEPS_+0xa8>

00000000800028e0 <_ZN3SEM7semWaitEPS_>:


int SEM::semWait(sem_t id){
    if(!id->onHold){
    800028e0:	00454783          	lbu	a5,4(a0)
    800028e4:	04079663          	bnez	a5,80002930 <_ZN3SEM7semWaitEPS_+0x50>
        id->value--;
    800028e8:	00052783          	lw	a5,0(a0)
    800028ec:	fff7879b          	addiw	a5,a5,-1
    800028f0:	00f52023          	sw	a5,0(a0)
        if(id->value<0){
    800028f4:	02079713          	slli	a4,a5,0x20
    800028f8:	00074663          	bltz	a4,80002904 <_ZN3SEM7semWaitEPS_+0x24>
            id->block();
        }
        return 0;
    800028fc:	00000513          	li	a0,0
    }else{
        return -1;
    }
}
    80002900:	00008067          	ret
int SEM::semWait(sem_t id){
    80002904:	ff010113          	addi	sp,sp,-16
    80002908:	00113423          	sd	ra,8(sp)
    8000290c:	00813023          	sd	s0,0(sp)
    80002910:	01010413          	addi	s0,sp,16
            id->block();
    80002914:	00000097          	auipc	ra,0x0
    80002918:	d64080e7          	jalr	-668(ra) # 80002678 <_ZN3SEM5blockEv>
        return 0;
    8000291c:	00000513          	li	a0,0
}
    80002920:	00813083          	ld	ra,8(sp)
    80002924:	00013403          	ld	s0,0(sp)
    80002928:	01010113          	addi	sp,sp,16
    8000292c:	00008067          	ret
        return -1;
    80002930:	fff00513          	li	a0,-1
    80002934:	00008067          	ret

0000000080002938 <_ZN3SEM9semSignalEPS_>:

int SEM::semSignal(sem_t id){
    if(!id->onHold){
    80002938:	00454783          	lbu	a5,4(a0)
    8000293c:	04079663          	bnez	a5,80002988 <_ZN3SEM9semSignalEPS_+0x50>
        id->value++;
    80002940:	00052783          	lw	a5,0(a0)
    80002944:	0017879b          	addiw	a5,a5,1
    80002948:	0007871b          	sext.w	a4,a5
    8000294c:	00f52023          	sw	a5,0(a0)
        if(id->value <= 0){
    80002950:	00e05663          	blez	a4,8000295c <_ZN3SEM9semSignalEPS_+0x24>
            id->deblock();
        }
        return 0;
    80002954:	00000513          	li	a0,0
    }else{
        return -1;
    }
    80002958:	00008067          	ret
int SEM::semSignal(sem_t id){
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00113423          	sd	ra,8(sp)
    80002964:	00813023          	sd	s0,0(sp)
    80002968:	01010413          	addi	s0,sp,16
            id->deblock();
    8000296c:	00000097          	auipc	ra,0x0
    80002970:	dc8080e7          	jalr	-568(ra) # 80002734 <_ZN3SEM7deblockEv>
        return 0;
    80002974:	00000513          	li	a0,0
    80002978:	00813083          	ld	ra,8(sp)
    8000297c:	00013403          	ld	s0,0(sp)
    80002980:	01010113          	addi	sp,sp,16
    80002984:	00008067          	ret
        return -1;
    80002988:	fff00513          	li	a0,-1
    8000298c:	00008067          	ret

0000000080002990 <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *ccb)
{
    schSize++;
    readyThreadQueue.addLast(ccb);
    80002990:	ff010113          	addi	sp,sp,-16
    80002994:	00813423          	sd	s0,8(sp)
    80002998:	01010413          	addi	s0,sp,16
    8000299c:	00100793          	li	a5,1
    800029a0:	00f50863          	beq	a0,a5,800029b0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800029a4:	00813403          	ld	s0,8(sp)
    800029a8:	01010113          	addi	sp,sp,16
    800029ac:	00008067          	ret
    800029b0:	000107b7          	lui	a5,0x10
    800029b4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800029b8:	fef596e3          	bne	a1,a5,800029a4 <_Z41__static_initialization_and_destruction_0ii+0x14>

    Elem *head, *tail;
    int size;

public:
    List() : head(0), tail(0), size(0) {}
    800029bc:	0000a797          	auipc	a5,0xa
    800029c0:	55478793          	addi	a5,a5,1364 # 8000cf10 <_ZN9Scheduler16readyThreadQueueE>
    800029c4:	0007b023          	sd	zero,0(a5)
    800029c8:	0007b423          	sd	zero,8(a5)
    800029cc:	0007a823          	sw	zero,16(a5)
    800029d0:	fd5ff06f          	j	800029a4 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800029d4 <_ZN9Scheduler10getSchSizeEv>:
int Scheduler::getSchSize(){
    800029d4:	ff010113          	addi	sp,sp,-16
    800029d8:	00813423          	sd	s0,8(sp)
    800029dc:	01010413          	addi	s0,sp,16
}
    800029e0:	0000a517          	auipc	a0,0xa
    800029e4:	54852503          	lw	a0,1352(a0) # 8000cf28 <_ZN9Scheduler7schSizeE>
    800029e8:	00813403          	ld	s0,8(sp)
    800029ec:	01010113          	addi	sp,sp,16
    800029f0:	00008067          	ret

00000000800029f4 <_ZN9Scheduler3getEv>:
{
    800029f4:	fe010113          	addi	sp,sp,-32
    800029f8:	00113c23          	sd	ra,24(sp)
    800029fc:	00813823          	sd	s0,16(sp)
    80002a00:	00913423          	sd	s1,8(sp)
    80002a04:	02010413          	addi	s0,sp,32
        schSize--;
    80002a08:	0000a797          	auipc	a5,0xa
    80002a0c:	50878793          	addi	a5,a5,1288 # 8000cf10 <_ZN9Scheduler16readyThreadQueueE>
    80002a10:	0187a703          	lw	a4,24(a5)
    80002a14:	fff7071b          	addiw	a4,a4,-1
    80002a18:	00e7ac23          	sw	a4,24(a5)
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80002a1c:	0007b503          	ld	a0,0(a5)
    80002a20:	04050663          	beqz	a0,80002a6c <_ZN9Scheduler3getEv+0x78>

        Elem *elem = head;
        head = head->next;
    80002a24:	00853683          	ld	a3,8(a0)
    80002a28:	00d7b023          	sd	a3,0(a5)
        size--;
    80002a2c:	0107a703          	lw	a4,16(a5)
    80002a30:	fff7071b          	addiw	a4,a4,-1
    80002a34:	00e7a823          	sw	a4,16(a5)
        if (!head) { tail = 0; }
    80002a38:	02068463          	beqz	a3,80002a60 <_ZN9Scheduler3getEv+0x6c>

        T *ret = elem->data;
    80002a3c:	00053483          	ld	s1,0(a0)
        delete elem;
    80002a40:	fffff097          	auipc	ra,0xfffff
    80002a44:	394080e7          	jalr	916(ra) # 80001dd4 <_ZdlPv>
}
    80002a48:	00048513          	mv	a0,s1
    80002a4c:	01813083          	ld	ra,24(sp)
    80002a50:	01013403          	ld	s0,16(sp)
    80002a54:	00813483          	ld	s1,8(sp)
    80002a58:	02010113          	addi	sp,sp,32
    80002a5c:	00008067          	ret
        if (!head) { tail = 0; }
    80002a60:	0000a797          	auipc	a5,0xa
    80002a64:	4a07bc23          	sd	zero,1208(a5) # 8000cf18 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002a68:	fd5ff06f          	j	80002a3c <_ZN9Scheduler3getEv+0x48>
        if (!head) { return 0; }
    80002a6c:	00050493          	mv	s1,a0
        return readyThreadQueue.removeFirst();
    80002a70:	fd9ff06f          	j	80002a48 <_ZN9Scheduler3getEv+0x54>

0000000080002a74 <_ZN9Scheduler3putEP3TCB>:
{
    80002a74:	fe010113          	addi	sp,sp,-32
    80002a78:	00113c23          	sd	ra,24(sp)
    80002a7c:	00813823          	sd	s0,16(sp)
    80002a80:	00913423          	sd	s1,8(sp)
    80002a84:	01213023          	sd	s2,0(sp)
    80002a88:	02010413          	addi	s0,sp,32
    80002a8c:	00050913          	mv	s2,a0
    schSize++;
    80002a90:	0000a497          	auipc	s1,0xa
    80002a94:	48048493          	addi	s1,s1,1152 # 8000cf10 <_ZN9Scheduler16readyThreadQueueE>
    80002a98:	0184a783          	lw	a5,24(s1)
    80002a9c:	0017879b          	addiw	a5,a5,1
    80002aa0:	00f4ac23          	sw	a5,24(s1)
        Elem *elem = new Elem(data, 0);
    80002aa4:	01000513          	li	a0,16
    80002aa8:	fffff097          	auipc	ra,0xfffff
    80002aac:	2dc080e7          	jalr	732(ra) # 80001d84 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002ab0:	01253023          	sd	s2,0(a0)
    80002ab4:	00053423          	sd	zero,8(a0)
        size++;
    80002ab8:	0104a783          	lw	a5,16(s1)
    80002abc:	0017879b          	addiw	a5,a5,1
    80002ac0:	00f4a823          	sw	a5,16(s1)
        if (tail)
    80002ac4:	0084b783          	ld	a5,8(s1)
    80002ac8:	02078463          	beqz	a5,80002af0 <_ZN9Scheduler3putEP3TCB+0x7c>
            tail->next = elem;
    80002acc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002ad0:	0000a797          	auipc	a5,0xa
    80002ad4:	44a7b423          	sd	a0,1096(a5) # 8000cf18 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002ad8:	01813083          	ld	ra,24(sp)
    80002adc:	01013403          	ld	s0,16(sp)
    80002ae0:	00813483          	ld	s1,8(sp)
    80002ae4:	00013903          	ld	s2,0(sp)
    80002ae8:	02010113          	addi	sp,sp,32
    80002aec:	00008067          	ret
            head = tail = elem;
    80002af0:	0000a797          	auipc	a5,0xa
    80002af4:	42078793          	addi	a5,a5,1056 # 8000cf10 <_ZN9Scheduler16readyThreadQueueE>
    80002af8:	00a7b423          	sd	a0,8(a5)
    80002afc:	00a7b023          	sd	a0,0(a5)
    80002b00:	fd9ff06f          	j	80002ad8 <_ZN9Scheduler3putEP3TCB+0x64>

0000000080002b04 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002b04:	ff010113          	addi	sp,sp,-16
    80002b08:	00113423          	sd	ra,8(sp)
    80002b0c:	00813023          	sd	s0,0(sp)
    80002b10:	01010413          	addi	s0,sp,16
    80002b14:	000105b7          	lui	a1,0x10
    80002b18:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002b1c:	00100513          	li	a0,1
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	e70080e7          	jalr	-400(ra) # 80002990 <_Z41__static_initialization_and_destruction_0ii>
    80002b28:	00813083          	ld	ra,8(sp)
    80002b2c:	00013403          	ld	s0,0(sp)
    80002b30:	01010113          	addi	sp,sp,16
    80002b34:	00008067          	ret

0000000080002b38 <_ZN3MEM8memAllocEm>:
    freeHead->next = nullptr;

    MEM::memAlloc((sizeof(MEM) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
}

void *MEM::memAlloc(size_t size) {
    80002b38:	ff010113          	addi	sp,sp,-16
    80002b3c:	00813423          	sd	s0,8(sp)
    80002b40:	01010413          	addi	s0,sp,16

    if (size <= 0)
    80002b44:	12050463          	beqz	a0,80002c6c <_ZN3MEM8memAllocEm+0x134>
        return nullptr;

    size_t neededSize = size * MEM_BLOCK_SIZE;
    80002b48:	00651713          	slli	a4,a0,0x6
    FreeSpace* freeSpace = freeHead;
    80002b4c:	0000a517          	auipc	a0,0xa
    80002b50:	3e453503          	ld	a0,996(a0) # 8000cf30 <_ZN3MEM8freeHeadE>

    while(freeSpace != nullptr){
    80002b54:	0e050863          	beqz	a0,80002c44 <_ZN3MEM8memAllocEm+0x10c>
        if(freeSpace->size < neededSize){
    80002b58:	00053783          	ld	a5,0(a0)
    80002b5c:	04e7e863          	bltu	a5,a4,80002bac <_ZN3MEM8memAllocEm+0x74>
            freeSpace = freeSpace->next;
            continue;
        }
        //ako ostane dovoljno mali prostor koji se nikada ne bi koristio leftover
        else if(freeSpace->size  < (neededSize + sizeof(FreeSpace))){
    80002b60:	01870693          	addi	a3,a4,24
    80002b64:	06d7f063          	bgeu	a5,a3,80002bc4 <_ZN3MEM8memAllocEm+0x8c>

            if(freeSpace->prev)
    80002b68:	00853783          	ld	a5,8(a0)
    80002b6c:	04078463          	beqz	a5,80002bb4 <_ZN3MEM8memAllocEm+0x7c>
                freeSpace->prev->next = freeSpace->next;
    80002b70:	01053683          	ld	a3,16(a0)
    80002b74:	00d7b823          	sd	a3,16(a5)
            else
                freeHead = freeSpace->next;

            if(freeSpace->next)
    80002b78:	01053783          	ld	a5,16(a0)
    80002b7c:	00078663          	beqz	a5,80002b88 <_ZN3MEM8memAllocEm+0x50>
                freeSpace->next->prev = freeSpace->prev;
    80002b80:	00853683          	ld	a3,8(a0)
    80002b84:	00d7b423          	sd	a3,8(a5)
                freeSpace->next->prev = leftover;
        }

        //dolazak u punoj memoriji do elementa nakon kog treba da se uveze novi elem
        FullSpace* fullSpace = nullptr;
        if (fullHead && (char*)freeSpace >= (char*)fullHead) {
    80002b88:	0000a797          	auipc	a5,0xa
    80002b8c:	3b07b783          	ld	a5,944(a5) # 8000cf38 <_ZN3MEM8fullHeadE>
    80002b90:	06078e63          	beqz	a5,80002c0c <_ZN3MEM8memAllocEm+0xd4>
    80002b94:	08f56063          	bltu	a0,a5,80002c14 <_ZN3MEM8memAllocEm+0xdc>

            fullSpace = fullHead;
            while(fullSpace->next != nullptr && (char *)freeSpace > (char *)(fullSpace->next)){
    80002b98:	00078693          	mv	a3,a5
    80002b9c:	0107b783          	ld	a5,16(a5)
    80002ba0:	06078c63          	beqz	a5,80002c18 <_ZN3MEM8memAllocEm+0xe0>
    80002ba4:	fea7eae3          	bltu	a5,a0,80002b98 <_ZN3MEM8memAllocEm+0x60>
    80002ba8:	0700006f          	j	80002c18 <_ZN3MEM8memAllocEm+0xe0>
            freeSpace = freeSpace->next;
    80002bac:	01053503          	ld	a0,16(a0)
    while(freeSpace != nullptr){
    80002bb0:	fa5ff06f          	j	80002b54 <_ZN3MEM8memAllocEm+0x1c>
                freeHead = freeSpace->next;
    80002bb4:	01053783          	ld	a5,16(a0)
    80002bb8:	0000a697          	auipc	a3,0xa
    80002bbc:	36f6bc23          	sd	a5,888(a3) # 8000cf30 <_ZN3MEM8freeHeadE>
    80002bc0:	fb9ff06f          	j	80002b78 <_ZN3MEM8memAllocEm+0x40>
            auto* leftover = (FreeSpace*)(neededSize + (char*)freeSpace);
    80002bc4:	00e507b3          	add	a5,a0,a4
            leftover->prev = freeSpace->prev;
    80002bc8:	00853683          	ld	a3,8(a0)
    80002bcc:	00d7b423          	sd	a3,8(a5)
            leftover->next = freeSpace->next;
    80002bd0:	01053683          	ld	a3,16(a0)
    80002bd4:	00d7b823          	sd	a3,16(a5)
            leftover->size = freeSpace->size - neededSize;
    80002bd8:	00053683          	ld	a3,0(a0)
    80002bdc:	40e686b3          	sub	a3,a3,a4
    80002be0:	00d7b023          	sd	a3,0(a5)
            if(freeSpace->prev)
    80002be4:	00853683          	ld	a3,8(a0)
    80002be8:	00068c63          	beqz	a3,80002c00 <_ZN3MEM8memAllocEm+0xc8>
                freeSpace->prev->next = leftover;
    80002bec:	00f6b823          	sd	a5,16(a3)
            if(freeSpace->next)
    80002bf0:	01053683          	ld	a3,16(a0)
    80002bf4:	f8068ae3          	beqz	a3,80002b88 <_ZN3MEM8memAllocEm+0x50>
                freeSpace->next->prev = leftover;
    80002bf8:	00f6b423          	sd	a5,8(a3)
    80002bfc:	f8dff06f          	j	80002b88 <_ZN3MEM8memAllocEm+0x50>
                freeHead = leftover;
    80002c00:	0000a697          	auipc	a3,0xa
    80002c04:	32f6b823          	sd	a5,816(a3) # 8000cf30 <_ZN3MEM8freeHeadE>
    80002c08:	fe9ff06f          	j	80002bf0 <_ZN3MEM8memAllocEm+0xb8>
        FullSpace* fullSpace = nullptr;
    80002c0c:	00078693          	mv	a3,a5
    80002c10:	0080006f          	j	80002c18 <_ZN3MEM8memAllocEm+0xe0>
    80002c14:	00000693          	li	a3,0
            }
        }

        //uvezivanje novog elementa
        auto* newFull = (FullSpace*)freeSpace;
        newFull->size = neededSize;
    80002c18:	00e53023          	sd	a4,0(a0)
        newFull->prev = fullSpace;
    80002c1c:	00d53423          	sd	a3,8(a0)

        if (fullSpace)
    80002c20:	02068863          	beqz	a3,80002c50 <_ZN3MEM8memAllocEm+0x118>
            newFull->next = fullSpace->next;
    80002c24:	0106b783          	ld	a5,16(a3)
    80002c28:	00f53823          	sd	a5,16(a0)
        else
            newFull->next = fullHead;

        if(newFull->next)
    80002c2c:	01053783          	ld	a5,16(a0)
    80002c30:	00078463          	beqz	a5,80002c38 <_ZN3MEM8memAllocEm+0x100>
            newFull->next->prev = newFull;
    80002c34:	00a7b423          	sd	a0,8(a5)

        if (fullSpace)
    80002c38:	02068463          	beqz	a3,80002c60 <_ZN3MEM8memAllocEm+0x128>
            fullSpace->next = newFull;
    80002c3c:	00a6b823          	sd	a0,16(a3)
        else
            fullHead = newFull;

        return (void*)(headerSize + (char*)newFull);
    80002c40:	01850513          	addi	a0,a0,24
    }
    return nullptr;
}
    80002c44:	00813403          	ld	s0,8(sp)
    80002c48:	01010113          	addi	sp,sp,16
    80002c4c:	00008067          	ret
            newFull->next = fullHead;
    80002c50:	0000a797          	auipc	a5,0xa
    80002c54:	2e87b783          	ld	a5,744(a5) # 8000cf38 <_ZN3MEM8fullHeadE>
    80002c58:	00f53823          	sd	a5,16(a0)
    80002c5c:	fd1ff06f          	j	80002c2c <_ZN3MEM8memAllocEm+0xf4>
            fullHead = newFull;
    80002c60:	0000a797          	auipc	a5,0xa
    80002c64:	2ca7bc23          	sd	a0,728(a5) # 8000cf38 <_ZN3MEM8fullHeadE>
    80002c68:	fd9ff06f          	j	80002c40 <_ZN3MEM8memAllocEm+0x108>
        return nullptr;
    80002c6c:	00000513          	li	a0,0
    80002c70:	fd5ff06f          	j	80002c44 <_ZN3MEM8memAllocEm+0x10c>

0000000080002c74 <_ZN3MEM4initEv>:
void MEM::init(){
    80002c74:	ff010113          	addi	sp,sp,-16
    80002c78:	00113423          	sd	ra,8(sp)
    80002c7c:	00813023          	sd	s0,0(sp)
    80002c80:	01010413          	addi	s0,sp,16
    freeHead = (FreeSpace*)HEAP_START_ADDR;
    80002c84:	0000a797          	auipc	a5,0xa
    80002c88:	1cc7b783          	ld	a5,460(a5) # 8000ce50 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002c8c:	0007b783          	ld	a5,0(a5)
    80002c90:	0000a697          	auipc	a3,0xa
    80002c94:	2a068693          	addi	a3,a3,672 # 8000cf30 <_ZN3MEM8freeHeadE>
    80002c98:	00f6b023          	sd	a5,0(a3)
    freeHead->size = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR;
    80002c9c:	0000a717          	auipc	a4,0xa
    80002ca0:	1e473703          	ld	a4,484(a4) # 8000ce80 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002ca4:	00073703          	ld	a4,0(a4)
    80002ca8:	40f70733          	sub	a4,a4,a5
    80002cac:	00e7b023          	sd	a4,0(a5)
    freeHead->prev = nullptr;
    80002cb0:	0006b783          	ld	a5,0(a3)
    80002cb4:	0007b423          	sd	zero,8(a5)
    freeHead->next = nullptr;
    80002cb8:	0007b823          	sd	zero,16(a5)
    MEM::memAlloc((sizeof(MEM) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    80002cbc:	00100513          	li	a0,1
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	e78080e7          	jalr	-392(ra) # 80002b38 <_ZN3MEM8memAllocEm>
}
    80002cc8:	00813083          	ld	ra,8(sp)
    80002ccc:	00013403          	ld	s0,0(sp)
    80002cd0:	01010113          	addi	sp,sp,16
    80002cd4:	00008067          	ret

0000000080002cd8 <_ZN3MEM9tryToJoinEPNS_9FreeSpaceES1_>:
    }
}


//ovo se moglo bolje implementirati
int MEM::tryToJoin(FreeSpace *firstSegment, FreeSpace* secondSegment){
    80002cd8:	ff010113          	addi	sp,sp,-16
    80002cdc:	00813423          	sd	s0,8(sp)
    80002ce0:	01010413          	addi	s0,sp,16
    if((char*)firstSegment + firstSegment->size == (char*)secondSegment){
    80002ce4:	00053783          	ld	a5,0(a0)
    80002ce8:	00f50733          	add	a4,a0,a5
    80002cec:	00b70a63          	beq	a4,a1,80002d00 <_ZN3MEM9tryToJoinEPNS_9FreeSpaceES1_+0x28>
        if (secondSegment->next)
            secondSegment->next->prev = firstSegment;

        return 1;
    }
    return 0;
    80002cf0:	00000513          	li	a0,0
}
    80002cf4:	00813403          	ld	s0,8(sp)
    80002cf8:	01010113          	addi	sp,sp,16
    80002cfc:	00008067          	ret
        firstSegment->size += secondSegment->size;
    80002d00:	0005b703          	ld	a4,0(a1)
    80002d04:	00e787b3          	add	a5,a5,a4
    80002d08:	00f53023          	sd	a5,0(a0)
        firstSegment->prev = secondSegment->prev;
    80002d0c:	0085b783          	ld	a5,8(a1)
    80002d10:	00f53423          	sd	a5,8(a0)
        firstSegment->next = secondSegment->next;
    80002d14:	0105b783          	ld	a5,16(a1)
    80002d18:	00f53823          	sd	a5,16(a0)
        if (secondSegment->prev)
    80002d1c:	0085b783          	ld	a5,8(a1)
    80002d20:	00078e63          	beqz	a5,80002d3c <_ZN3MEM9tryToJoinEPNS_9FreeSpaceES1_+0x64>
            secondSegment->prev->next = firstSegment;
    80002d24:	00a7b823          	sd	a0,16(a5)
        if (secondSegment->next)
    80002d28:	0105b783          	ld	a5,16(a1)
    80002d2c:	00078463          	beqz	a5,80002d34 <_ZN3MEM9tryToJoinEPNS_9FreeSpaceES1_+0x5c>
            secondSegment->next->prev = firstSegment;
    80002d30:	00a7b423          	sd	a0,8(a5)
        return 1;
    80002d34:	00100513          	li	a0,1
    80002d38:	fbdff06f          	j	80002cf4 <_ZN3MEM9tryToJoinEPNS_9FreeSpaceES1_+0x1c>
            freeHead = firstSegment;
    80002d3c:	0000a797          	auipc	a5,0xa
    80002d40:	1ea7ba23          	sd	a0,500(a5) # 8000cf30 <_ZN3MEM8freeHeadE>
    80002d44:	fe5ff06f          	j	80002d28 <_ZN3MEM9tryToJoinEPNS_9FreeSpaceES1_+0x50>

0000000080002d48 <_ZN3MEM7memFreeEPv>:
    if (address == nullptr)
    80002d48:	14050263          	beqz	a0,80002e8c <_ZN3MEM7memFreeEPv+0x144>
int MEM::memFree(void *address) {
    80002d4c:	fd010113          	addi	sp,sp,-48
    80002d50:	02113423          	sd	ra,40(sp)
    80002d54:	02813023          	sd	s0,32(sp)
    80002d58:	00913c23          	sd	s1,24(sp)
    80002d5c:	01213823          	sd	s2,16(sp)
    80002d60:	01313423          	sd	s3,8(sp)
    80002d64:	03010413          	addi	s0,sp,48
    80002d68:	00050993          	mv	s3,a0
    address = (void*)((char*)address - headerSize);
    80002d6c:	fe850493          	addi	s1,a0,-24
    FullSpace* fullSpace = fullHead;
    80002d70:	0000a797          	auipc	a5,0xa
    80002d74:	1c87b783          	ld	a5,456(a5) # 8000cf38 <_ZN3MEM8fullHeadE>
    bool isStartOfSegment = false;
    80002d78:	0080006f          	j	80002d80 <_ZN3MEM7memFreeEPv+0x38>
        fullSpace = fullSpace->next;
    80002d7c:	0107b783          	ld	a5,16(a5)
    while(fullSpace && addressSegment>=fullSpace){
    80002d80:	00078a63          	beqz	a5,80002d94 <_ZN3MEM7memFreeEPv+0x4c>
    80002d84:	0af4e863          	bltu	s1,a5,80002e34 <_ZN3MEM7memFreeEPv+0xec>
        if(fullSpace == addressSegment) {
    80002d88:	fe979ae3          	bne	a5,s1,80002d7c <_ZN3MEM7memFreeEPv+0x34>
            isStartOfSegment = true;
    80002d8c:	00100713          	li	a4,1
    80002d90:	0080006f          	j	80002d98 <_ZN3MEM7memFreeEPv+0x50>
    bool isStartOfSegment = false;
    80002d94:	00000713          	li	a4,0
    if (!isStartOfSegment)
    80002d98:	0e070e63          	beqz	a4,80002e94 <_ZN3MEM7memFreeEPv+0x14c>
    if (addressSegment->prev)
    80002d9c:	0087b703          	ld	a4,8(a5)
    80002da0:	08070e63          	beqz	a4,80002e3c <_ZN3MEM7memFreeEPv+0xf4>
        addressSegment->prev->next = addressSegment->next;
    80002da4:	0107b683          	ld	a3,16(a5)
    80002da8:	00d73823          	sd	a3,16(a4)
    if (addressSegment->next)
    80002dac:	0107b703          	ld	a4,16(a5)
    80002db0:	00070663          	beqz	a4,80002dbc <_ZN3MEM7memFreeEPv+0x74>
        addressSegment->next->prev = addressSegment->prev;
    80002db4:	0087b683          	ld	a3,8(a5)
    80002db8:	00d73423          	sd	a3,8(a4)
    FreeSpace* freeSpace = freeHead;
    80002dbc:	0000a597          	auipc	a1,0xa
    80002dc0:	1745b583          	ld	a1,372(a1) # 8000cf30 <_ZN3MEM8freeHeadE>
    while(freeSpace->next != nullptr && (char*)address > (char*)(freeSpace->next)){
    80002dc4:	00058913          	mv	s2,a1
    80002dc8:	0105b583          	ld	a1,16(a1)
    80002dcc:	00058463          	beqz	a1,80002dd4 <_ZN3MEM7memFreeEPv+0x8c>
    80002dd0:	fe95eae3          	bltu	a1,s1,80002dc4 <_ZN3MEM7memFreeEPv+0x7c>
    if((char*)freeSpace + freeSpace->size == address){
    80002dd4:	00093703          	ld	a4,0(s2)
    80002dd8:	00e906b3          	add	a3,s2,a4
    80002ddc:	06968863          	beq	a3,s1,80002e4c <_ZN3MEM7memFreeEPv+0x104>
        newSegment->size = addressSegment->size;
    80002de0:	0007b783          	ld	a5,0(a5)
    80002de4:	fef9b423          	sd	a5,-24(s3)
        if(nextSegment && tryToJoin(newSegment, nextSegment))
    80002de8:	00058a63          	beqz	a1,80002dfc <_ZN3MEM7memFreeEPv+0xb4>
    80002dec:	00048513          	mv	a0,s1
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	ee8080e7          	jalr	-280(ra) # 80002cd8 <_ZN3MEM9tryToJoinEPNS_9FreeSpaceES1_>
    80002df8:	0a051263          	bnez	a0,80002e9c <_ZN3MEM7memFreeEPv+0x154>
            newSegment->prev = freeSpace;
    80002dfc:	ff29b823          	sd	s2,-16(s3)
            newSegment->next = freeSpace->next;
    80002e00:	01093783          	ld	a5,16(s2)
    80002e04:	fef9bc23          	sd	a5,-8(s3)
            if (newSegment->next)
    80002e08:	00078463          	beqz	a5,80002e10 <_ZN3MEM7memFreeEPv+0xc8>
                newSegment->next->prev = newSegment;
    80002e0c:	0097b423          	sd	s1,8(a5)
            freeSpace->next = newSegment;
    80002e10:	00993823          	sd	s1,16(s2)
            return 0;
    80002e14:	00000513          	li	a0,0
}
    80002e18:	02813083          	ld	ra,40(sp)
    80002e1c:	02013403          	ld	s0,32(sp)
    80002e20:	01813483          	ld	s1,24(sp)
    80002e24:	01013903          	ld	s2,16(sp)
    80002e28:	00813983          	ld	s3,8(sp)
    80002e2c:	03010113          	addi	sp,sp,48
    80002e30:	00008067          	ret
    bool isStartOfSegment = false;
    80002e34:	00000713          	li	a4,0
    80002e38:	f61ff06f          	j	80002d98 <_ZN3MEM7memFreeEPv+0x50>
        fullHead = addressSegment->next;
    80002e3c:	0107b703          	ld	a4,16(a5)
    80002e40:	0000a697          	auipc	a3,0xa
    80002e44:	0ee6bc23          	sd	a4,248(a3) # 8000cf38 <_ZN3MEM8fullHeadE>
    80002e48:	f65ff06f          	j	80002dac <_ZN3MEM7memFreeEPv+0x64>
        freeSpace->size += addressSegment->size;
    80002e4c:	0007b783          	ld	a5,0(a5)
    80002e50:	00f70733          	add	a4,a4,a5
    80002e54:	00e93023          	sd	a4,0(s2)
        if (freeSpace->next && (char*)((char*)freeSpace + freeSpace->size) == (char*)(freeSpace->next)){
    80002e58:	00058663          	beqz	a1,80002e64 <_ZN3MEM7memFreeEPv+0x11c>
    80002e5c:	00e907b3          	add	a5,s2,a4
    80002e60:	00f58663          	beq	a1,a5,80002e6c <_ZN3MEM7memFreeEPv+0x124>
        return 0;
    80002e64:	00000513          	li	a0,0
    80002e68:	fb1ff06f          	j	80002e18 <_ZN3MEM7memFreeEPv+0xd0>
            freeSpace->size += freeSpace->next->size;
    80002e6c:	0005b783          	ld	a5,0(a1)
    80002e70:	00f70733          	add	a4,a4,a5
    80002e74:	00e93023          	sd	a4,0(s2)
            freeSpace->next = freeSpace->next->next;
    80002e78:	0105b783          	ld	a5,16(a1)
    80002e7c:	00f93823          	sd	a5,16(s2)
            if (freeSpace->next)
    80002e80:	fe0782e3          	beqz	a5,80002e64 <_ZN3MEM7memFreeEPv+0x11c>
                freeSpace->next->prev = freeSpace;
    80002e84:	0127b423          	sd	s2,8(a5)
    80002e88:	fddff06f          	j	80002e64 <_ZN3MEM7memFreeEPv+0x11c>
        return -1;
    80002e8c:	fff00513          	li	a0,-1
}
    80002e90:	00008067          	ret
        return -1;
    80002e94:	fff00513          	li	a0,-1
    80002e98:	f81ff06f          	j	80002e18 <_ZN3MEM7memFreeEPv+0xd0>
            return 0;
    80002e9c:	00000513          	li	a0,0
    80002ea0:	f79ff06f          	j	80002e18 <_ZN3MEM7memFreeEPv+0xd0>

0000000080002ea4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002ea4:	fe010113          	addi	sp,sp,-32
    80002ea8:	00113c23          	sd	ra,24(sp)
    80002eac:	00813823          	sd	s0,16(sp)
    80002eb0:	00913423          	sd	s1,8(sp)
    80002eb4:	01213023          	sd	s2,0(sp)
    80002eb8:	02010413          	addi	s0,sp,32
    80002ebc:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002ec0:	00000493          	li	s1,0
    80002ec4:	00c0006f          	j	80002ed0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
//        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002ec8:	ffffe097          	auipc	ra,0xffffe
    80002ecc:	5d4080e7          	jalr	1492(ra) # 8000149c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002ed0:	ffffe097          	auipc	ra,0xffffe
    80002ed4:	784080e7          	jalr	1924(ra) # 80001654 <_Z4getcv>
    80002ed8:	01b00793          	li	a5,27
    80002edc:	02f50463          	beq	a0,a5,80002f04 <_ZL16producerKeyboardPv+0x60>
        i++;
    80002ee0:	0014871b          	addiw	a4,s1,1
    80002ee4:	0007049b          	sext.w	s1,a4
        if (i % (10 * data->id) == 0) {
    80002ee8:	00092683          	lw	a3,0(s2)
    80002eec:	0026979b          	slliw	a5,a3,0x2
    80002ef0:	00d787bb          	addw	a5,a5,a3
    80002ef4:	0017979b          	slliw	a5,a5,0x1
    80002ef8:	02f767bb          	remw	a5,a4,a5
    80002efc:	fc079ae3          	bnez	a5,80002ed0 <_ZL16producerKeyboardPv+0x2c>
    80002f00:	fc9ff06f          	j	80002ec8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002f04:	00100793          	li	a5,1
    80002f08:	0000a717          	auipc	a4,0xa
    80002f0c:	02f72c23          	sw	a5,56(a4) # 8000cf40 <_ZL9threadEnd>
    data->buffer->put('!');
    80002f10:	02100593          	li	a1,33
    80002f14:	00893503          	ld	a0,8(s2)
    80002f18:	00004097          	auipc	ra,0x4
    80002f1c:	9a0080e7          	jalr	-1632(ra) # 800068b8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002f20:	01093503          	ld	a0,16(s2)
    80002f24:	ffffe097          	auipc	ra,0xffffe
    80002f28:	6ac080e7          	jalr	1708(ra) # 800015d0 <_Z10sem_signalP3SEM>
}
    80002f2c:	01813083          	ld	ra,24(sp)
    80002f30:	01013403          	ld	s0,16(sp)
    80002f34:	00813483          	ld	s1,8(sp)
    80002f38:	00013903          	ld	s2,0(sp)
    80002f3c:	02010113          	addi	sp,sp,32
    80002f40:	00008067          	ret

0000000080002f44 <_ZL8producerPv>:

static void producer(void *arg) {
    80002f44:	fe010113          	addi	sp,sp,-32
    80002f48:	00113c23          	sd	ra,24(sp)
    80002f4c:	00813823          	sd	s0,16(sp)
    80002f50:	00913423          	sd	s1,8(sp)
    80002f54:	01213023          	sd	s2,0(sp)
    80002f58:	02010413          	addi	s0,sp,32
    80002f5c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002f60:	00000913          	li	s2,0
    80002f64:	00c0006f          	j	80002f70 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002f68:	ffffe097          	auipc	ra,0xffffe
    80002f6c:	534080e7          	jalr	1332(ra) # 8000149c <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002f70:	0000a797          	auipc	a5,0xa
    80002f74:	fd07a783          	lw	a5,-48(a5) # 8000cf40 <_ZL9threadEnd>
    80002f78:	02079e63          	bnez	a5,80002fb4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002f7c:	0004a583          	lw	a1,0(s1)
    80002f80:	0305859b          	addiw	a1,a1,48
    80002f84:	0084b503          	ld	a0,8(s1)
    80002f88:	00004097          	auipc	ra,0x4
    80002f8c:	930080e7          	jalr	-1744(ra) # 800068b8 <_ZN6Buffer3putEi>
        i++;
    80002f90:	0019071b          	addiw	a4,s2,1
    80002f94:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002f98:	0004a683          	lw	a3,0(s1)
    80002f9c:	0026979b          	slliw	a5,a3,0x2
    80002fa0:	00d787bb          	addw	a5,a5,a3
    80002fa4:	0017979b          	slliw	a5,a5,0x1
    80002fa8:	02f767bb          	remw	a5,a4,a5
    80002fac:	fc0792e3          	bnez	a5,80002f70 <_ZL8producerPv+0x2c>
    80002fb0:	fb9ff06f          	j	80002f68 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002fb4:	0104b503          	ld	a0,16(s1)
    80002fb8:	ffffe097          	auipc	ra,0xffffe
    80002fbc:	618080e7          	jalr	1560(ra) # 800015d0 <_Z10sem_signalP3SEM>
}
    80002fc0:	01813083          	ld	ra,24(sp)
    80002fc4:	01013403          	ld	s0,16(sp)
    80002fc8:	00813483          	ld	s1,8(sp)
    80002fcc:	00013903          	ld	s2,0(sp)
    80002fd0:	02010113          	addi	sp,sp,32
    80002fd4:	00008067          	ret

0000000080002fd8 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002fd8:	fd010113          	addi	sp,sp,-48
    80002fdc:	02113423          	sd	ra,40(sp)
    80002fe0:	02813023          	sd	s0,32(sp)
    80002fe4:	00913c23          	sd	s1,24(sp)
    80002fe8:	01213823          	sd	s2,16(sp)
    80002fec:	01313423          	sd	s3,8(sp)
    80002ff0:	03010413          	addi	s0,sp,48
    80002ff4:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002ff8:	00000993          	li	s3,0
    80002ffc:	01c0006f          	j	80003018 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003000:	ffffe097          	auipc	ra,0xffffe
    80003004:	49c080e7          	jalr	1180(ra) # 8000149c <_Z15thread_dispatchv>
    80003008:	0500006f          	j	80003058 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000300c:	00a00513          	li	a0,10
    80003010:	ffffe097          	auipc	ra,0xffffe
    80003014:	61c080e7          	jalr	1564(ra) # 8000162c <_Z4putcc>
    while (!threadEnd) {
    80003018:	0000a797          	auipc	a5,0xa
    8000301c:	f287a783          	lw	a5,-216(a5) # 8000cf40 <_ZL9threadEnd>
    80003020:	06079063          	bnez	a5,80003080 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003024:	00893503          	ld	a0,8(s2)
    80003028:	00004097          	auipc	ra,0x4
    8000302c:	920080e7          	jalr	-1760(ra) # 80006948 <_ZN6Buffer3getEv>
        i++;
    80003030:	0019849b          	addiw	s1,s3,1
    80003034:	0004899b          	sext.w	s3,s1
        putc(key);
    80003038:	0ff57513          	andi	a0,a0,255
    8000303c:	ffffe097          	auipc	ra,0xffffe
    80003040:	5f0080e7          	jalr	1520(ra) # 8000162c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003044:	00092703          	lw	a4,0(s2)
    80003048:	0027179b          	slliw	a5,a4,0x2
    8000304c:	00e787bb          	addw	a5,a5,a4
    80003050:	02f4e7bb          	remw	a5,s1,a5
    80003054:	fa0786e3          	beqz	a5,80003000 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003058:	05000793          	li	a5,80
    8000305c:	02f4e4bb          	remw	s1,s1,a5
    80003060:	fa049ce3          	bnez	s1,80003018 <_ZL8consumerPv+0x40>
    80003064:	fa9ff06f          	j	8000300c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003068:	00893503          	ld	a0,8(s2)
    8000306c:	00004097          	auipc	ra,0x4
    80003070:	8dc080e7          	jalr	-1828(ra) # 80006948 <_ZN6Buffer3getEv>
        putc(key);
    80003074:	0ff57513          	andi	a0,a0,255
    80003078:	ffffe097          	auipc	ra,0xffffe
    8000307c:	5b4080e7          	jalr	1460(ra) # 8000162c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003080:	00893503          	ld	a0,8(s2)
    80003084:	00004097          	auipc	ra,0x4
    80003088:	950080e7          	jalr	-1712(ra) # 800069d4 <_ZN6Buffer6getCntEv>
    8000308c:	fca04ee3          	bgtz	a0,80003068 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003090:	01093503          	ld	a0,16(s2)
    80003094:	ffffe097          	auipc	ra,0xffffe
    80003098:	53c080e7          	jalr	1340(ra) # 800015d0 <_Z10sem_signalP3SEM>
}
    8000309c:	02813083          	ld	ra,40(sp)
    800030a0:	02013403          	ld	s0,32(sp)
    800030a4:	01813483          	ld	s1,24(sp)
    800030a8:	01013903          	ld	s2,16(sp)
    800030ac:	00813983          	ld	s3,8(sp)
    800030b0:	03010113          	addi	sp,sp,48
    800030b4:	00008067          	ret

00000000800030b8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800030b8:	f9010113          	addi	sp,sp,-112
    800030bc:	06113423          	sd	ra,104(sp)
    800030c0:	06813023          	sd	s0,96(sp)
    800030c4:	04913c23          	sd	s1,88(sp)
    800030c8:	05213823          	sd	s2,80(sp)
    800030cc:	05313423          	sd	s3,72(sp)
    800030d0:	05413023          	sd	s4,64(sp)
    800030d4:	03513c23          	sd	s5,56(sp)
    800030d8:	03613823          	sd	s6,48(sp)
    800030dc:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800030e0:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800030e4:	00007517          	auipc	a0,0x7
    800030e8:	06c50513          	addi	a0,a0,108 # 8000a150 <CONSOLE_STATUS+0x140>
    800030ec:	00002097          	auipc	ra,0x2
    800030f0:	494080e7          	jalr	1172(ra) # 80005580 <_Z11printStringPKc>
    getString(input, 30);
    800030f4:	01e00593          	li	a1,30
    800030f8:	fa040493          	addi	s1,s0,-96
    800030fc:	00048513          	mv	a0,s1
    80003100:	00002097          	auipc	ra,0x2
    80003104:	508080e7          	jalr	1288(ra) # 80005608 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003108:	00048513          	mv	a0,s1
    8000310c:	00002097          	auipc	ra,0x2
    80003110:	5d4080e7          	jalr	1492(ra) # 800056e0 <_Z11stringToIntPKc>
    80003114:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003118:	00007517          	auipc	a0,0x7
    8000311c:	05850513          	addi	a0,a0,88 # 8000a170 <CONSOLE_STATUS+0x160>
    80003120:	00002097          	auipc	ra,0x2
    80003124:	460080e7          	jalr	1120(ra) # 80005580 <_Z11printStringPKc>
    getString(input, 30);
    80003128:	01e00593          	li	a1,30
    8000312c:	00048513          	mv	a0,s1
    80003130:	00002097          	auipc	ra,0x2
    80003134:	4d8080e7          	jalr	1240(ra) # 80005608 <_Z9getStringPci>
    n = stringToInt(input);
    80003138:	00048513          	mv	a0,s1
    8000313c:	00002097          	auipc	ra,0x2
    80003140:	5a4080e7          	jalr	1444(ra) # 800056e0 <_Z11stringToIntPKc>
    80003144:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003148:	00007517          	auipc	a0,0x7
    8000314c:	04850513          	addi	a0,a0,72 # 8000a190 <CONSOLE_STATUS+0x180>
    80003150:	00002097          	auipc	ra,0x2
    80003154:	430080e7          	jalr	1072(ra) # 80005580 <_Z11printStringPKc>
    80003158:	00000613          	li	a2,0
    8000315c:	00a00593          	li	a1,10
    80003160:	00090513          	mv	a0,s2
    80003164:	00002097          	auipc	ra,0x2
    80003168:	5cc080e7          	jalr	1484(ra) # 80005730 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000316c:	00007517          	auipc	a0,0x7
    80003170:	03c50513          	addi	a0,a0,60 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003174:	00002097          	auipc	ra,0x2
    80003178:	40c080e7          	jalr	1036(ra) # 80005580 <_Z11printStringPKc>
    8000317c:	00000613          	li	a2,0
    80003180:	00a00593          	li	a1,10
    80003184:	00048513          	mv	a0,s1
    80003188:	00002097          	auipc	ra,0x2
    8000318c:	5a8080e7          	jalr	1448(ra) # 80005730 <_Z8printIntiii>
    printString(".\n");
    80003190:	00007517          	auipc	a0,0x7
    80003194:	03050513          	addi	a0,a0,48 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80003198:	00002097          	auipc	ra,0x2
    8000319c:	3e8080e7          	jalr	1000(ra) # 80005580 <_Z11printStringPKc>
    if(threadNum > n) {
    800031a0:	0324c463          	blt	s1,s2,800031c8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800031a4:	03205c63          	blez	s2,800031dc <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800031a8:	03800513          	li	a0,56
    800031ac:	fffff097          	auipc	ra,0xfffff
    800031b0:	bd8080e7          	jalr	-1064(ra) # 80001d84 <_Znwm>
    800031b4:	00050a13          	mv	s4,a0
    800031b8:	00048593          	mv	a1,s1
    800031bc:	00003097          	auipc	ra,0x3
    800031c0:	660080e7          	jalr	1632(ra) # 8000681c <_ZN6BufferC1Ei>
    800031c4:	0300006f          	j	800031f4 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800031c8:	00007517          	auipc	a0,0x7
    800031cc:	00050513          	mv	a0,a0
    800031d0:	00002097          	auipc	ra,0x2
    800031d4:	3b0080e7          	jalr	944(ra) # 80005580 <_Z11printStringPKc>
        return;
    800031d8:	0140006f          	j	800031ec <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800031dc:	00007517          	auipc	a0,0x7
    800031e0:	02c50513          	addi	a0,a0,44 # 8000a208 <CONSOLE_STATUS+0x1f8>
    800031e4:	00002097          	auipc	ra,0x2
    800031e8:	39c080e7          	jalr	924(ra) # 80005580 <_Z11printStringPKc>
        return;
    800031ec:	000b0113          	mv	sp,s6
    800031f0:	1500006f          	j	80003340 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800031f4:	00000593          	li	a1,0
    800031f8:	0000a517          	auipc	a0,0xa
    800031fc:	d5050513          	addi	a0,a0,-688 # 8000cf48 <_ZL10waitForAll>
    80003200:	ffffe097          	auipc	ra,0xffffe
    80003204:	33c080e7          	jalr	828(ra) # 8000153c <_Z8sem_openPP3SEMj>
    thread_t threads[threadNum];
    80003208:	00391793          	slli	a5,s2,0x3
    8000320c:	00f78793          	addi	a5,a5,15
    80003210:	ff07f793          	andi	a5,a5,-16
    80003214:	40f10133          	sub	sp,sp,a5
    80003218:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000321c:	0019071b          	addiw	a4,s2,1
    80003220:	00171793          	slli	a5,a4,0x1
    80003224:	00e787b3          	add	a5,a5,a4
    80003228:	00379793          	slli	a5,a5,0x3
    8000322c:	00f78793          	addi	a5,a5,15
    80003230:	ff07f793          	andi	a5,a5,-16
    80003234:	40f10133          	sub	sp,sp,a5
    80003238:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000323c:	00191613          	slli	a2,s2,0x1
    80003240:	012607b3          	add	a5,a2,s2
    80003244:	00379793          	slli	a5,a5,0x3
    80003248:	00f987b3          	add	a5,s3,a5
    8000324c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003250:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003254:	0000a717          	auipc	a4,0xa
    80003258:	cf473703          	ld	a4,-780(a4) # 8000cf48 <_ZL10waitForAll>
    8000325c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003260:	00078613          	mv	a2,a5
    80003264:	00000597          	auipc	a1,0x0
    80003268:	d7458593          	addi	a1,a1,-652 # 80002fd8 <_ZL8consumerPv>
    8000326c:	f9840513          	addi	a0,s0,-104
    80003270:	ffffe097          	auipc	ra,0xffffe
    80003274:	18c080e7          	jalr	396(ra) # 800013fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003278:	00000493          	li	s1,0
    8000327c:	0280006f          	j	800032a4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003280:	00000597          	auipc	a1,0x0
    80003284:	c2458593          	addi	a1,a1,-988 # 80002ea4 <_ZL16producerKeyboardPv>
                      data + i);
    80003288:	00179613          	slli	a2,a5,0x1
    8000328c:	00f60633          	add	a2,a2,a5
    80003290:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003294:	00c98633          	add	a2,s3,a2
    80003298:	ffffe097          	auipc	ra,0xffffe
    8000329c:	164080e7          	jalr	356(ra) # 800013fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800032a0:	0014849b          	addiw	s1,s1,1
    800032a4:	0524d263          	bge	s1,s2,800032e8 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800032a8:	00149793          	slli	a5,s1,0x1
    800032ac:	009787b3          	add	a5,a5,s1
    800032b0:	00379793          	slli	a5,a5,0x3
    800032b4:	00f987b3          	add	a5,s3,a5
    800032b8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800032bc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800032c0:	0000a717          	auipc	a4,0xa
    800032c4:	c8873703          	ld	a4,-888(a4) # 8000cf48 <_ZL10waitForAll>
    800032c8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800032cc:	00048793          	mv	a5,s1
    800032d0:	00349513          	slli	a0,s1,0x3
    800032d4:	00aa8533          	add	a0,s5,a0
    800032d8:	fa9054e3          	blez	s1,80003280 <_Z22producerConsumer_C_APIv+0x1c8>
    800032dc:	00000597          	auipc	a1,0x0
    800032e0:	c6858593          	addi	a1,a1,-920 # 80002f44 <_ZL8producerPv>
    800032e4:	fa5ff06f          	j	80003288 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800032e8:	ffffe097          	auipc	ra,0xffffe
    800032ec:	1b4080e7          	jalr	436(ra) # 8000149c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800032f0:	00000493          	li	s1,0
    800032f4:	00994e63          	blt	s2,s1,80003310 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800032f8:	0000a517          	auipc	a0,0xa
    800032fc:	c5053503          	ld	a0,-944(a0) # 8000cf48 <_ZL10waitForAll>
    80003300:	ffffe097          	auipc	ra,0xffffe
    80003304:	2a0080e7          	jalr	672(ra) # 800015a0 <_Z8sem_waitP3SEM>
    for (int i = 0; i <= threadNum; i++) {
    80003308:	0014849b          	addiw	s1,s1,1
    8000330c:	fe9ff06f          	j	800032f4 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003310:	0000a517          	auipc	a0,0xa
    80003314:	c3853503          	ld	a0,-968(a0) # 8000cf48 <_ZL10waitForAll>
    80003318:	ffffe097          	auipc	ra,0xffffe
    8000331c:	258080e7          	jalr	600(ra) # 80001570 <_Z9sem_closeP3SEM>
    delete buffer;
    80003320:	000a0e63          	beqz	s4,8000333c <_Z22producerConsumer_C_APIv+0x284>
    80003324:	000a0513          	mv	a0,s4
    80003328:	00003097          	auipc	ra,0x3
    8000332c:	734080e7          	jalr	1844(ra) # 80006a5c <_ZN6BufferD1Ev>
    80003330:	000a0513          	mv	a0,s4
    80003334:	fffff097          	auipc	ra,0xfffff
    80003338:	aa0080e7          	jalr	-1376(ra) # 80001dd4 <_ZdlPv>
    8000333c:	000b0113          	mv	sp,s6

}
    80003340:	f9040113          	addi	sp,s0,-112
    80003344:	06813083          	ld	ra,104(sp)
    80003348:	06013403          	ld	s0,96(sp)
    8000334c:	05813483          	ld	s1,88(sp)
    80003350:	05013903          	ld	s2,80(sp)
    80003354:	04813983          	ld	s3,72(sp)
    80003358:	04013a03          	ld	s4,64(sp)
    8000335c:	03813a83          	ld	s5,56(sp)
    80003360:	03013b03          	ld	s6,48(sp)
    80003364:	07010113          	addi	sp,sp,112
    80003368:	00008067          	ret
    8000336c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003370:	000a0513          	mv	a0,s4
    80003374:	fffff097          	auipc	ra,0xfffff
    80003378:	a60080e7          	jalr	-1440(ra) # 80001dd4 <_ZdlPv>
    8000337c:	00048513          	mv	a0,s1
    80003380:	0000b097          	auipc	ra,0xb
    80003384:	cf8080e7          	jalr	-776(ra) # 8000e078 <_Unwind_Resume>

0000000080003388 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003388:	fe010113          	addi	sp,sp,-32
    8000338c:	00113c23          	sd	ra,24(sp)
    80003390:	00813823          	sd	s0,16(sp)
    80003394:	00913423          	sd	s1,8(sp)
    80003398:	01213023          	sd	s2,0(sp)
    8000339c:	02010413          	addi	s0,sp,32
    800033a0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800033a4:	00100793          	li	a5,1
    800033a8:	02a7f863          	bgeu	a5,a0,800033d8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800033ac:	00a00793          	li	a5,10
    800033b0:	02f577b3          	remu	a5,a0,a5
    800033b4:	02078e63          	beqz	a5,800033f0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800033b8:	fff48513          	addi	a0,s1,-1
    800033bc:	00000097          	auipc	ra,0x0
    800033c0:	fcc080e7          	jalr	-52(ra) # 80003388 <_ZL9fibonaccim>
    800033c4:	00050913          	mv	s2,a0
    800033c8:	ffe48513          	addi	a0,s1,-2
    800033cc:	00000097          	auipc	ra,0x0
    800033d0:	fbc080e7          	jalr	-68(ra) # 80003388 <_ZL9fibonaccim>
    800033d4:	00a90533          	add	a0,s2,a0
}
    800033d8:	01813083          	ld	ra,24(sp)
    800033dc:	01013403          	ld	s0,16(sp)
    800033e0:	00813483          	ld	s1,8(sp)
    800033e4:	00013903          	ld	s2,0(sp)
    800033e8:	02010113          	addi	sp,sp,32
    800033ec:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800033f0:	ffffe097          	auipc	ra,0xffffe
    800033f4:	0ac080e7          	jalr	172(ra) # 8000149c <_Z15thread_dispatchv>
    800033f8:	fc1ff06f          	j	800033b8 <_ZL9fibonaccim+0x30>

00000000800033fc <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800033fc:	fe010113          	addi	sp,sp,-32
    80003400:	00113c23          	sd	ra,24(sp)
    80003404:	00813823          	sd	s0,16(sp)
    80003408:	00913423          	sd	s1,8(sp)
    8000340c:	01213023          	sd	s2,0(sp)
    80003410:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003414:	00000913          	li	s2,0
    80003418:	0380006f          	j	80003450 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000341c:	ffffe097          	auipc	ra,0xffffe
    80003420:	080080e7          	jalr	128(ra) # 8000149c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003424:	00148493          	addi	s1,s1,1
    80003428:	000027b7          	lui	a5,0x2
    8000342c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003430:	0097ee63          	bltu	a5,s1,8000344c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003434:	00000713          	li	a4,0
    80003438:	000077b7          	lui	a5,0x7
    8000343c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003440:	fce7eee3          	bltu	a5,a4,8000341c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003444:	00170713          	addi	a4,a4,1
    80003448:	ff1ff06f          	j	80003438 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000344c:	00190913          	addi	s2,s2,1
    80003450:	00900793          	li	a5,9
    80003454:	0527e063          	bltu	a5,s2,80003494 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003458:	00007517          	auipc	a0,0x7
    8000345c:	de050513          	addi	a0,a0,-544 # 8000a238 <CONSOLE_STATUS+0x228>
    80003460:	00002097          	auipc	ra,0x2
    80003464:	120080e7          	jalr	288(ra) # 80005580 <_Z11printStringPKc>
    80003468:	00000613          	li	a2,0
    8000346c:	00a00593          	li	a1,10
    80003470:	0009051b          	sext.w	a0,s2
    80003474:	00002097          	auipc	ra,0x2
    80003478:	2bc080e7          	jalr	700(ra) # 80005730 <_Z8printIntiii>
    8000347c:	00007517          	auipc	a0,0x7
    80003480:	ed450513          	addi	a0,a0,-300 # 8000a350 <CONSOLE_STATUS+0x340>
    80003484:	00002097          	auipc	ra,0x2
    80003488:	0fc080e7          	jalr	252(ra) # 80005580 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000348c:	00000493          	li	s1,0
    80003490:	f99ff06f          	j	80003428 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003494:	00007517          	auipc	a0,0x7
    80003498:	dac50513          	addi	a0,a0,-596 # 8000a240 <CONSOLE_STATUS+0x230>
    8000349c:	00002097          	auipc	ra,0x2
    800034a0:	0e4080e7          	jalr	228(ra) # 80005580 <_Z11printStringPKc>
    finishedA = true;
    800034a4:	00100793          	li	a5,1
    800034a8:	0000a717          	auipc	a4,0xa
    800034ac:	aaf70423          	sb	a5,-1368(a4) # 8000cf50 <_ZL9finishedA>
}
    800034b0:	01813083          	ld	ra,24(sp)
    800034b4:	01013403          	ld	s0,16(sp)
    800034b8:	00813483          	ld	s1,8(sp)
    800034bc:	00013903          	ld	s2,0(sp)
    800034c0:	02010113          	addi	sp,sp,32
    800034c4:	00008067          	ret

00000000800034c8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800034c8:	fe010113          	addi	sp,sp,-32
    800034cc:	00113c23          	sd	ra,24(sp)
    800034d0:	00813823          	sd	s0,16(sp)
    800034d4:	00913423          	sd	s1,8(sp)
    800034d8:	01213023          	sd	s2,0(sp)
    800034dc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800034e0:	00000913          	li	s2,0
    800034e4:	0380006f          	j	8000351c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800034e8:	ffffe097          	auipc	ra,0xffffe
    800034ec:	fb4080e7          	jalr	-76(ra) # 8000149c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800034f0:	00148493          	addi	s1,s1,1
    800034f4:	000027b7          	lui	a5,0x2
    800034f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800034fc:	0097ee63          	bltu	a5,s1,80003518 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003500:	00000713          	li	a4,0
    80003504:	000077b7          	lui	a5,0x7
    80003508:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000350c:	fce7eee3          	bltu	a5,a4,800034e8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003510:	00170713          	addi	a4,a4,1
    80003514:	ff1ff06f          	j	80003504 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003518:	00190913          	addi	s2,s2,1
    8000351c:	00f00793          	li	a5,15
    80003520:	0527e063          	bltu	a5,s2,80003560 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003524:	00007517          	auipc	a0,0x7
    80003528:	d2c50513          	addi	a0,a0,-724 # 8000a250 <CONSOLE_STATUS+0x240>
    8000352c:	00002097          	auipc	ra,0x2
    80003530:	054080e7          	jalr	84(ra) # 80005580 <_Z11printStringPKc>
    80003534:	00000613          	li	a2,0
    80003538:	00a00593          	li	a1,10
    8000353c:	0009051b          	sext.w	a0,s2
    80003540:	00002097          	auipc	ra,0x2
    80003544:	1f0080e7          	jalr	496(ra) # 80005730 <_Z8printIntiii>
    80003548:	00007517          	auipc	a0,0x7
    8000354c:	e0850513          	addi	a0,a0,-504 # 8000a350 <CONSOLE_STATUS+0x340>
    80003550:	00002097          	auipc	ra,0x2
    80003554:	030080e7          	jalr	48(ra) # 80005580 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003558:	00000493          	li	s1,0
    8000355c:	f99ff06f          	j	800034f4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003560:	00007517          	auipc	a0,0x7
    80003564:	cf850513          	addi	a0,a0,-776 # 8000a258 <CONSOLE_STATUS+0x248>
    80003568:	00002097          	auipc	ra,0x2
    8000356c:	018080e7          	jalr	24(ra) # 80005580 <_Z11printStringPKc>
    finishedB = true;
    80003570:	00100793          	li	a5,1
    80003574:	0000a717          	auipc	a4,0xa
    80003578:	9cf70ea3          	sb	a5,-1571(a4) # 8000cf51 <_ZL9finishedB>
    thread_dispatch();
    8000357c:	ffffe097          	auipc	ra,0xffffe
    80003580:	f20080e7          	jalr	-224(ra) # 8000149c <_Z15thread_dispatchv>
}
    80003584:	01813083          	ld	ra,24(sp)
    80003588:	01013403          	ld	s0,16(sp)
    8000358c:	00813483          	ld	s1,8(sp)
    80003590:	00013903          	ld	s2,0(sp)
    80003594:	02010113          	addi	sp,sp,32
    80003598:	00008067          	ret

000000008000359c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000359c:	fe010113          	addi	sp,sp,-32
    800035a0:	00113c23          	sd	ra,24(sp)
    800035a4:	00813823          	sd	s0,16(sp)
    800035a8:	00913423          	sd	s1,8(sp)
    800035ac:	01213023          	sd	s2,0(sp)
    800035b0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800035b4:	00000493          	li	s1,0
    800035b8:	0400006f          	j	800035f8 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800035bc:	00007517          	auipc	a0,0x7
    800035c0:	cac50513          	addi	a0,a0,-852 # 8000a268 <CONSOLE_STATUS+0x258>
    800035c4:	00002097          	auipc	ra,0x2
    800035c8:	fbc080e7          	jalr	-68(ra) # 80005580 <_Z11printStringPKc>
    800035cc:	00000613          	li	a2,0
    800035d0:	00a00593          	li	a1,10
    800035d4:	00048513          	mv	a0,s1
    800035d8:	00002097          	auipc	ra,0x2
    800035dc:	158080e7          	jalr	344(ra) # 80005730 <_Z8printIntiii>
    800035e0:	00007517          	auipc	a0,0x7
    800035e4:	d7050513          	addi	a0,a0,-656 # 8000a350 <CONSOLE_STATUS+0x340>
    800035e8:	00002097          	auipc	ra,0x2
    800035ec:	f98080e7          	jalr	-104(ra) # 80005580 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800035f0:	0014849b          	addiw	s1,s1,1
    800035f4:	0ff4f493          	andi	s1,s1,255
    800035f8:	00200793          	li	a5,2
    800035fc:	fc97f0e3          	bgeu	a5,s1,800035bc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003600:	00007517          	auipc	a0,0x7
    80003604:	c7050513          	addi	a0,a0,-912 # 8000a270 <CONSOLE_STATUS+0x260>
    80003608:	00002097          	auipc	ra,0x2
    8000360c:	f78080e7          	jalr	-136(ra) # 80005580 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003610:	00700313          	li	t1,7
    thread_dispatch();
    80003614:	ffffe097          	auipc	ra,0xffffe
    80003618:	e88080e7          	jalr	-376(ra) # 8000149c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000361c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003620:	00007517          	auipc	a0,0x7
    80003624:	c6050513          	addi	a0,a0,-928 # 8000a280 <CONSOLE_STATUS+0x270>
    80003628:	00002097          	auipc	ra,0x2
    8000362c:	f58080e7          	jalr	-168(ra) # 80005580 <_Z11printStringPKc>
    80003630:	00000613          	li	a2,0
    80003634:	00a00593          	li	a1,10
    80003638:	0009051b          	sext.w	a0,s2
    8000363c:	00002097          	auipc	ra,0x2
    80003640:	0f4080e7          	jalr	244(ra) # 80005730 <_Z8printIntiii>
    80003644:	00007517          	auipc	a0,0x7
    80003648:	d0c50513          	addi	a0,a0,-756 # 8000a350 <CONSOLE_STATUS+0x340>
    8000364c:	00002097          	auipc	ra,0x2
    80003650:	f34080e7          	jalr	-204(ra) # 80005580 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003654:	00c00513          	li	a0,12
    80003658:	00000097          	auipc	ra,0x0
    8000365c:	d30080e7          	jalr	-720(ra) # 80003388 <_ZL9fibonaccim>
    80003660:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003664:	00007517          	auipc	a0,0x7
    80003668:	c2450513          	addi	a0,a0,-988 # 8000a288 <CONSOLE_STATUS+0x278>
    8000366c:	00002097          	auipc	ra,0x2
    80003670:	f14080e7          	jalr	-236(ra) # 80005580 <_Z11printStringPKc>
    80003674:	00000613          	li	a2,0
    80003678:	00a00593          	li	a1,10
    8000367c:	0009051b          	sext.w	a0,s2
    80003680:	00002097          	auipc	ra,0x2
    80003684:	0b0080e7          	jalr	176(ra) # 80005730 <_Z8printIntiii>
    80003688:	00007517          	auipc	a0,0x7
    8000368c:	cc850513          	addi	a0,a0,-824 # 8000a350 <CONSOLE_STATUS+0x340>
    80003690:	00002097          	auipc	ra,0x2
    80003694:	ef0080e7          	jalr	-272(ra) # 80005580 <_Z11printStringPKc>
    80003698:	0400006f          	j	800036d8 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000369c:	00007517          	auipc	a0,0x7
    800036a0:	bcc50513          	addi	a0,a0,-1076 # 8000a268 <CONSOLE_STATUS+0x258>
    800036a4:	00002097          	auipc	ra,0x2
    800036a8:	edc080e7          	jalr	-292(ra) # 80005580 <_Z11printStringPKc>
    800036ac:	00000613          	li	a2,0
    800036b0:	00a00593          	li	a1,10
    800036b4:	00048513          	mv	a0,s1
    800036b8:	00002097          	auipc	ra,0x2
    800036bc:	078080e7          	jalr	120(ra) # 80005730 <_Z8printIntiii>
    800036c0:	00007517          	auipc	a0,0x7
    800036c4:	c9050513          	addi	a0,a0,-880 # 8000a350 <CONSOLE_STATUS+0x340>
    800036c8:	00002097          	auipc	ra,0x2
    800036cc:	eb8080e7          	jalr	-328(ra) # 80005580 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800036d0:	0014849b          	addiw	s1,s1,1
    800036d4:	0ff4f493          	andi	s1,s1,255
    800036d8:	00500793          	li	a5,5
    800036dc:	fc97f0e3          	bgeu	a5,s1,8000369c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    800036e0:	00007517          	auipc	a0,0x7
    800036e4:	bb850513          	addi	a0,a0,-1096 # 8000a298 <CONSOLE_STATUS+0x288>
    800036e8:	00002097          	auipc	ra,0x2
    800036ec:	e98080e7          	jalr	-360(ra) # 80005580 <_Z11printStringPKc>
    finishedC = true;
    800036f0:	00100793          	li	a5,1
    800036f4:	0000a717          	auipc	a4,0xa
    800036f8:	84f70f23          	sb	a5,-1954(a4) # 8000cf52 <_ZL9finishedC>
    thread_dispatch();
    800036fc:	ffffe097          	auipc	ra,0xffffe
    80003700:	da0080e7          	jalr	-608(ra) # 8000149c <_Z15thread_dispatchv>
}
    80003704:	01813083          	ld	ra,24(sp)
    80003708:	01013403          	ld	s0,16(sp)
    8000370c:	00813483          	ld	s1,8(sp)
    80003710:	00013903          	ld	s2,0(sp)
    80003714:	02010113          	addi	sp,sp,32
    80003718:	00008067          	ret

000000008000371c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000371c:	fe010113          	addi	sp,sp,-32
    80003720:	00113c23          	sd	ra,24(sp)
    80003724:	00813823          	sd	s0,16(sp)
    80003728:	00913423          	sd	s1,8(sp)
    8000372c:	01213023          	sd	s2,0(sp)
    80003730:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003734:	00a00493          	li	s1,10
    80003738:	0400006f          	j	80003778 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000373c:	00007517          	auipc	a0,0x7
    80003740:	b6c50513          	addi	a0,a0,-1172 # 8000a2a8 <CONSOLE_STATUS+0x298>
    80003744:	00002097          	auipc	ra,0x2
    80003748:	e3c080e7          	jalr	-452(ra) # 80005580 <_Z11printStringPKc>
    8000374c:	00000613          	li	a2,0
    80003750:	00a00593          	li	a1,10
    80003754:	00048513          	mv	a0,s1
    80003758:	00002097          	auipc	ra,0x2
    8000375c:	fd8080e7          	jalr	-40(ra) # 80005730 <_Z8printIntiii>
    80003760:	00007517          	auipc	a0,0x7
    80003764:	bf050513          	addi	a0,a0,-1040 # 8000a350 <CONSOLE_STATUS+0x340>
    80003768:	00002097          	auipc	ra,0x2
    8000376c:	e18080e7          	jalr	-488(ra) # 80005580 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003770:	0014849b          	addiw	s1,s1,1
    80003774:	0ff4f493          	andi	s1,s1,255
    80003778:	00c00793          	li	a5,12
    8000377c:	fc97f0e3          	bgeu	a5,s1,8000373c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003780:	00007517          	auipc	a0,0x7
    80003784:	b3050513          	addi	a0,a0,-1232 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80003788:	00002097          	auipc	ra,0x2
    8000378c:	df8080e7          	jalr	-520(ra) # 80005580 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003790:	00500313          	li	t1,5
    thread_dispatch();
    80003794:	ffffe097          	auipc	ra,0xffffe
    80003798:	d08080e7          	jalr	-760(ra) # 8000149c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000379c:	01000513          	li	a0,16
    800037a0:	00000097          	auipc	ra,0x0
    800037a4:	be8080e7          	jalr	-1048(ra) # 80003388 <_ZL9fibonaccim>
    800037a8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800037ac:	00007517          	auipc	a0,0x7
    800037b0:	b1450513          	addi	a0,a0,-1260 # 8000a2c0 <CONSOLE_STATUS+0x2b0>
    800037b4:	00002097          	auipc	ra,0x2
    800037b8:	dcc080e7          	jalr	-564(ra) # 80005580 <_Z11printStringPKc>
    800037bc:	00000613          	li	a2,0
    800037c0:	00a00593          	li	a1,10
    800037c4:	0009051b          	sext.w	a0,s2
    800037c8:	00002097          	auipc	ra,0x2
    800037cc:	f68080e7          	jalr	-152(ra) # 80005730 <_Z8printIntiii>
    800037d0:	00007517          	auipc	a0,0x7
    800037d4:	b8050513          	addi	a0,a0,-1152 # 8000a350 <CONSOLE_STATUS+0x340>
    800037d8:	00002097          	auipc	ra,0x2
    800037dc:	da8080e7          	jalr	-600(ra) # 80005580 <_Z11printStringPKc>
    800037e0:	0400006f          	j	80003820 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800037e4:	00007517          	auipc	a0,0x7
    800037e8:	ac450513          	addi	a0,a0,-1340 # 8000a2a8 <CONSOLE_STATUS+0x298>
    800037ec:	00002097          	auipc	ra,0x2
    800037f0:	d94080e7          	jalr	-620(ra) # 80005580 <_Z11printStringPKc>
    800037f4:	00000613          	li	a2,0
    800037f8:	00a00593          	li	a1,10
    800037fc:	00048513          	mv	a0,s1
    80003800:	00002097          	auipc	ra,0x2
    80003804:	f30080e7          	jalr	-208(ra) # 80005730 <_Z8printIntiii>
    80003808:	00007517          	auipc	a0,0x7
    8000380c:	b4850513          	addi	a0,a0,-1208 # 8000a350 <CONSOLE_STATUS+0x340>
    80003810:	00002097          	auipc	ra,0x2
    80003814:	d70080e7          	jalr	-656(ra) # 80005580 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003818:	0014849b          	addiw	s1,s1,1
    8000381c:	0ff4f493          	andi	s1,s1,255
    80003820:	00f00793          	li	a5,15
    80003824:	fc97f0e3          	bgeu	a5,s1,800037e4 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003828:	00007517          	auipc	a0,0x7
    8000382c:	aa850513          	addi	a0,a0,-1368 # 8000a2d0 <CONSOLE_STATUS+0x2c0>
    80003830:	00002097          	auipc	ra,0x2
    80003834:	d50080e7          	jalr	-688(ra) # 80005580 <_Z11printStringPKc>
    finishedD = true;
    80003838:	00100793          	li	a5,1
    8000383c:	00009717          	auipc	a4,0x9
    80003840:	70f70ba3          	sb	a5,1815(a4) # 8000cf53 <_ZL9finishedD>
    thread_dispatch();
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	c58080e7          	jalr	-936(ra) # 8000149c <_Z15thread_dispatchv>
}
    8000384c:	01813083          	ld	ra,24(sp)
    80003850:	01013403          	ld	s0,16(sp)
    80003854:	00813483          	ld	s1,8(sp)
    80003858:	00013903          	ld	s2,0(sp)
    8000385c:	02010113          	addi	sp,sp,32
    80003860:	00008067          	ret

0000000080003864 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003864:	fc010113          	addi	sp,sp,-64
    80003868:	02113c23          	sd	ra,56(sp)
    8000386c:	02813823          	sd	s0,48(sp)
    80003870:	02913423          	sd	s1,40(sp)
    80003874:	03213023          	sd	s2,32(sp)
    80003878:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000387c:	02000513          	li	a0,32
    80003880:	ffffe097          	auipc	ra,0xffffe
    80003884:	504080e7          	jalr	1284(ra) # 80001d84 <_Znwm>
    80003888:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	710080e7          	jalr	1808(ra) # 80001f9c <_ZN6ThreadC1Ev>
    80003894:	00009797          	auipc	a5,0x9
    80003898:	37c78793          	addi	a5,a5,892 # 8000cc10 <_ZTV7WorkerA+0x10>
    8000389c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800038a0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800038a4:	00007517          	auipc	a0,0x7
    800038a8:	a3c50513          	addi	a0,a0,-1476 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    800038ac:	00002097          	auipc	ra,0x2
    800038b0:	cd4080e7          	jalr	-812(ra) # 80005580 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800038b4:	02000513          	li	a0,32
    800038b8:	ffffe097          	auipc	ra,0xffffe
    800038bc:	4cc080e7          	jalr	1228(ra) # 80001d84 <_Znwm>
    800038c0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800038c4:	ffffe097          	auipc	ra,0xffffe
    800038c8:	6d8080e7          	jalr	1752(ra) # 80001f9c <_ZN6ThreadC1Ev>
    800038cc:	00009797          	auipc	a5,0x9
    800038d0:	36c78793          	addi	a5,a5,876 # 8000cc38 <_ZTV7WorkerB+0x10>
    800038d4:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800038d8:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800038dc:	00007517          	auipc	a0,0x7
    800038e0:	a1c50513          	addi	a0,a0,-1508 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    800038e4:	00002097          	auipc	ra,0x2
    800038e8:	c9c080e7          	jalr	-868(ra) # 80005580 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800038ec:	02000513          	li	a0,32
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	494080e7          	jalr	1172(ra) # 80001d84 <_Znwm>
    800038f8:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	6a0080e7          	jalr	1696(ra) # 80001f9c <_ZN6ThreadC1Ev>
    80003904:	00009797          	auipc	a5,0x9
    80003908:	35c78793          	addi	a5,a5,860 # 8000cc60 <_ZTV7WorkerC+0x10>
    8000390c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003910:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003914:	00007517          	auipc	a0,0x7
    80003918:	9fc50513          	addi	a0,a0,-1540 # 8000a310 <CONSOLE_STATUS+0x300>
    8000391c:	00002097          	auipc	ra,0x2
    80003920:	c64080e7          	jalr	-924(ra) # 80005580 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003924:	02000513          	li	a0,32
    80003928:	ffffe097          	auipc	ra,0xffffe
    8000392c:	45c080e7          	jalr	1116(ra) # 80001d84 <_Znwm>
    80003930:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003934:	ffffe097          	auipc	ra,0xffffe
    80003938:	668080e7          	jalr	1640(ra) # 80001f9c <_ZN6ThreadC1Ev>
    8000393c:	00009797          	auipc	a5,0x9
    80003940:	34c78793          	addi	a5,a5,844 # 8000cc88 <_ZTV7WorkerD+0x10>
    80003944:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003948:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000394c:	00007517          	auipc	a0,0x7
    80003950:	9dc50513          	addi	a0,a0,-1572 # 8000a328 <CONSOLE_STATUS+0x318>
    80003954:	00002097          	auipc	ra,0x2
    80003958:	c2c080e7          	jalr	-980(ra) # 80005580 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000395c:	00000493          	li	s1,0
    80003960:	00300793          	li	a5,3
    80003964:	0297c663          	blt	a5,s1,80003990 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003968:	00349793          	slli	a5,s1,0x3
    8000396c:	fe040713          	addi	a4,s0,-32
    80003970:	00f707b3          	add	a5,a4,a5
    80003974:	fe07b503          	ld	a0,-32(a5)
    80003978:	ffffe097          	auipc	ra,0xffffe
    8000397c:	658080e7          	jalr	1624(ra) # 80001fd0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003980:	0014849b          	addiw	s1,s1,1
    80003984:	fddff06f          	j	80003960 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003988:	ffffe097          	auipc	ra,0xffffe
    8000398c:	6d0080e7          	jalr	1744(ra) # 80002058 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003990:	00009797          	auipc	a5,0x9
    80003994:	5c07c783          	lbu	a5,1472(a5) # 8000cf50 <_ZL9finishedA>
    80003998:	fe0788e3          	beqz	a5,80003988 <_Z20Threads_CPP_API_testv+0x124>
    8000399c:	00009797          	auipc	a5,0x9
    800039a0:	5b57c783          	lbu	a5,1461(a5) # 8000cf51 <_ZL9finishedB>
    800039a4:	fe0782e3          	beqz	a5,80003988 <_Z20Threads_CPP_API_testv+0x124>
    800039a8:	00009797          	auipc	a5,0x9
    800039ac:	5aa7c783          	lbu	a5,1450(a5) # 8000cf52 <_ZL9finishedC>
    800039b0:	fc078ce3          	beqz	a5,80003988 <_Z20Threads_CPP_API_testv+0x124>
    800039b4:	00009797          	auipc	a5,0x9
    800039b8:	59f7c783          	lbu	a5,1439(a5) # 8000cf53 <_ZL9finishedD>
    800039bc:	fc0786e3          	beqz	a5,80003988 <_Z20Threads_CPP_API_testv+0x124>
    800039c0:	fc040493          	addi	s1,s0,-64
    800039c4:	0080006f          	j	800039cc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800039c8:	00848493          	addi	s1,s1,8
    800039cc:	fe040793          	addi	a5,s0,-32
    800039d0:	08f48663          	beq	s1,a5,80003a5c <_Z20Threads_CPP_API_testv+0x1f8>
    800039d4:	0004b503          	ld	a0,0(s1)
    800039d8:	fe0508e3          	beqz	a0,800039c8 <_Z20Threads_CPP_API_testv+0x164>
    800039dc:	00053783          	ld	a5,0(a0)
    800039e0:	0087b783          	ld	a5,8(a5)
    800039e4:	000780e7          	jalr	a5
    800039e8:	fe1ff06f          	j	800039c8 <_Z20Threads_CPP_API_testv+0x164>
    800039ec:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800039f0:	00048513          	mv	a0,s1
    800039f4:	ffffe097          	auipc	ra,0xffffe
    800039f8:	3e0080e7          	jalr	992(ra) # 80001dd4 <_ZdlPv>
    800039fc:	00090513          	mv	a0,s2
    80003a00:	0000a097          	auipc	ra,0xa
    80003a04:	678080e7          	jalr	1656(ra) # 8000e078 <_Unwind_Resume>
    80003a08:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003a0c:	00048513          	mv	a0,s1
    80003a10:	ffffe097          	auipc	ra,0xffffe
    80003a14:	3c4080e7          	jalr	964(ra) # 80001dd4 <_ZdlPv>
    80003a18:	00090513          	mv	a0,s2
    80003a1c:	0000a097          	auipc	ra,0xa
    80003a20:	65c080e7          	jalr	1628(ra) # 8000e078 <_Unwind_Resume>
    80003a24:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003a28:	00048513          	mv	a0,s1
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	3a8080e7          	jalr	936(ra) # 80001dd4 <_ZdlPv>
    80003a34:	00090513          	mv	a0,s2
    80003a38:	0000a097          	auipc	ra,0xa
    80003a3c:	640080e7          	jalr	1600(ra) # 8000e078 <_Unwind_Resume>
    80003a40:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003a44:	00048513          	mv	a0,s1
    80003a48:	ffffe097          	auipc	ra,0xffffe
    80003a4c:	38c080e7          	jalr	908(ra) # 80001dd4 <_ZdlPv>
    80003a50:	00090513          	mv	a0,s2
    80003a54:	0000a097          	auipc	ra,0xa
    80003a58:	624080e7          	jalr	1572(ra) # 8000e078 <_Unwind_Resume>
}
    80003a5c:	03813083          	ld	ra,56(sp)
    80003a60:	03013403          	ld	s0,48(sp)
    80003a64:	02813483          	ld	s1,40(sp)
    80003a68:	02013903          	ld	s2,32(sp)
    80003a6c:	04010113          	addi	sp,sp,64
    80003a70:	00008067          	ret

0000000080003a74 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003a74:	ff010113          	addi	sp,sp,-16
    80003a78:	00113423          	sd	ra,8(sp)
    80003a7c:	00813023          	sd	s0,0(sp)
    80003a80:	01010413          	addi	s0,sp,16
    80003a84:	00009797          	auipc	a5,0x9
    80003a88:	18c78793          	addi	a5,a5,396 # 8000cc10 <_ZTV7WorkerA+0x10>
    80003a8c:	00f53023          	sd	a5,0(a0)
    80003a90:	ffffe097          	auipc	ra,0xffffe
    80003a94:	3d0080e7          	jalr	976(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80003a98:	00813083          	ld	ra,8(sp)
    80003a9c:	00013403          	ld	s0,0(sp)
    80003aa0:	01010113          	addi	sp,sp,16
    80003aa4:	00008067          	ret

0000000080003aa8 <_ZN7WorkerAD0Ev>:
    80003aa8:	fe010113          	addi	sp,sp,-32
    80003aac:	00113c23          	sd	ra,24(sp)
    80003ab0:	00813823          	sd	s0,16(sp)
    80003ab4:	00913423          	sd	s1,8(sp)
    80003ab8:	02010413          	addi	s0,sp,32
    80003abc:	00050493          	mv	s1,a0
    80003ac0:	00009797          	auipc	a5,0x9
    80003ac4:	15078793          	addi	a5,a5,336 # 8000cc10 <_ZTV7WorkerA+0x10>
    80003ac8:	00f53023          	sd	a5,0(a0)
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	394080e7          	jalr	916(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80003ad4:	00048513          	mv	a0,s1
    80003ad8:	ffffe097          	auipc	ra,0xffffe
    80003adc:	2fc080e7          	jalr	764(ra) # 80001dd4 <_ZdlPv>
    80003ae0:	01813083          	ld	ra,24(sp)
    80003ae4:	01013403          	ld	s0,16(sp)
    80003ae8:	00813483          	ld	s1,8(sp)
    80003aec:	02010113          	addi	sp,sp,32
    80003af0:	00008067          	ret

0000000080003af4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003af4:	ff010113          	addi	sp,sp,-16
    80003af8:	00113423          	sd	ra,8(sp)
    80003afc:	00813023          	sd	s0,0(sp)
    80003b00:	01010413          	addi	s0,sp,16
    80003b04:	00009797          	auipc	a5,0x9
    80003b08:	13478793          	addi	a5,a5,308 # 8000cc38 <_ZTV7WorkerB+0x10>
    80003b0c:	00f53023          	sd	a5,0(a0)
    80003b10:	ffffe097          	auipc	ra,0xffffe
    80003b14:	350080e7          	jalr	848(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80003b18:	00813083          	ld	ra,8(sp)
    80003b1c:	00013403          	ld	s0,0(sp)
    80003b20:	01010113          	addi	sp,sp,16
    80003b24:	00008067          	ret

0000000080003b28 <_ZN7WorkerBD0Ev>:
    80003b28:	fe010113          	addi	sp,sp,-32
    80003b2c:	00113c23          	sd	ra,24(sp)
    80003b30:	00813823          	sd	s0,16(sp)
    80003b34:	00913423          	sd	s1,8(sp)
    80003b38:	02010413          	addi	s0,sp,32
    80003b3c:	00050493          	mv	s1,a0
    80003b40:	00009797          	auipc	a5,0x9
    80003b44:	0f878793          	addi	a5,a5,248 # 8000cc38 <_ZTV7WorkerB+0x10>
    80003b48:	00f53023          	sd	a5,0(a0)
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	314080e7          	jalr	788(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80003b54:	00048513          	mv	a0,s1
    80003b58:	ffffe097          	auipc	ra,0xffffe
    80003b5c:	27c080e7          	jalr	636(ra) # 80001dd4 <_ZdlPv>
    80003b60:	01813083          	ld	ra,24(sp)
    80003b64:	01013403          	ld	s0,16(sp)
    80003b68:	00813483          	ld	s1,8(sp)
    80003b6c:	02010113          	addi	sp,sp,32
    80003b70:	00008067          	ret

0000000080003b74 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003b74:	ff010113          	addi	sp,sp,-16
    80003b78:	00113423          	sd	ra,8(sp)
    80003b7c:	00813023          	sd	s0,0(sp)
    80003b80:	01010413          	addi	s0,sp,16
    80003b84:	00009797          	auipc	a5,0x9
    80003b88:	0dc78793          	addi	a5,a5,220 # 8000cc60 <_ZTV7WorkerC+0x10>
    80003b8c:	00f53023          	sd	a5,0(a0)
    80003b90:	ffffe097          	auipc	ra,0xffffe
    80003b94:	2d0080e7          	jalr	720(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80003b98:	00813083          	ld	ra,8(sp)
    80003b9c:	00013403          	ld	s0,0(sp)
    80003ba0:	01010113          	addi	sp,sp,16
    80003ba4:	00008067          	ret

0000000080003ba8 <_ZN7WorkerCD0Ev>:
    80003ba8:	fe010113          	addi	sp,sp,-32
    80003bac:	00113c23          	sd	ra,24(sp)
    80003bb0:	00813823          	sd	s0,16(sp)
    80003bb4:	00913423          	sd	s1,8(sp)
    80003bb8:	02010413          	addi	s0,sp,32
    80003bbc:	00050493          	mv	s1,a0
    80003bc0:	00009797          	auipc	a5,0x9
    80003bc4:	0a078793          	addi	a5,a5,160 # 8000cc60 <_ZTV7WorkerC+0x10>
    80003bc8:	00f53023          	sd	a5,0(a0)
    80003bcc:	ffffe097          	auipc	ra,0xffffe
    80003bd0:	294080e7          	jalr	660(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80003bd4:	00048513          	mv	a0,s1
    80003bd8:	ffffe097          	auipc	ra,0xffffe
    80003bdc:	1fc080e7          	jalr	508(ra) # 80001dd4 <_ZdlPv>
    80003be0:	01813083          	ld	ra,24(sp)
    80003be4:	01013403          	ld	s0,16(sp)
    80003be8:	00813483          	ld	s1,8(sp)
    80003bec:	02010113          	addi	sp,sp,32
    80003bf0:	00008067          	ret

0000000080003bf4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003bf4:	ff010113          	addi	sp,sp,-16
    80003bf8:	00113423          	sd	ra,8(sp)
    80003bfc:	00813023          	sd	s0,0(sp)
    80003c00:	01010413          	addi	s0,sp,16
    80003c04:	00009797          	auipc	a5,0x9
    80003c08:	08478793          	addi	a5,a5,132 # 8000cc88 <_ZTV7WorkerD+0x10>
    80003c0c:	00f53023          	sd	a5,0(a0)
    80003c10:	ffffe097          	auipc	ra,0xffffe
    80003c14:	250080e7          	jalr	592(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80003c18:	00813083          	ld	ra,8(sp)
    80003c1c:	00013403          	ld	s0,0(sp)
    80003c20:	01010113          	addi	sp,sp,16
    80003c24:	00008067          	ret

0000000080003c28 <_ZN7WorkerDD0Ev>:
    80003c28:	fe010113          	addi	sp,sp,-32
    80003c2c:	00113c23          	sd	ra,24(sp)
    80003c30:	00813823          	sd	s0,16(sp)
    80003c34:	00913423          	sd	s1,8(sp)
    80003c38:	02010413          	addi	s0,sp,32
    80003c3c:	00050493          	mv	s1,a0
    80003c40:	00009797          	auipc	a5,0x9
    80003c44:	04878793          	addi	a5,a5,72 # 8000cc88 <_ZTV7WorkerD+0x10>
    80003c48:	00f53023          	sd	a5,0(a0)
    80003c4c:	ffffe097          	auipc	ra,0xffffe
    80003c50:	214080e7          	jalr	532(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80003c54:	00048513          	mv	a0,s1
    80003c58:	ffffe097          	auipc	ra,0xffffe
    80003c5c:	17c080e7          	jalr	380(ra) # 80001dd4 <_ZdlPv>
    80003c60:	01813083          	ld	ra,24(sp)
    80003c64:	01013403          	ld	s0,16(sp)
    80003c68:	00813483          	ld	s1,8(sp)
    80003c6c:	02010113          	addi	sp,sp,32
    80003c70:	00008067          	ret

0000000080003c74 <_ZN7WorkerA3runEv>:
    void run() override {
    80003c74:	ff010113          	addi	sp,sp,-16
    80003c78:	00113423          	sd	ra,8(sp)
    80003c7c:	00813023          	sd	s0,0(sp)
    80003c80:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003c84:	00000593          	li	a1,0
    80003c88:	fffff097          	auipc	ra,0xfffff
    80003c8c:	774080e7          	jalr	1908(ra) # 800033fc <_ZN7WorkerA11workerBodyAEPv>
    }
    80003c90:	00813083          	ld	ra,8(sp)
    80003c94:	00013403          	ld	s0,0(sp)
    80003c98:	01010113          	addi	sp,sp,16
    80003c9c:	00008067          	ret

0000000080003ca0 <_ZN7WorkerB3runEv>:
    void run() override {
    80003ca0:	ff010113          	addi	sp,sp,-16
    80003ca4:	00113423          	sd	ra,8(sp)
    80003ca8:	00813023          	sd	s0,0(sp)
    80003cac:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003cb0:	00000593          	li	a1,0
    80003cb4:	00000097          	auipc	ra,0x0
    80003cb8:	814080e7          	jalr	-2028(ra) # 800034c8 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003cbc:	00813083          	ld	ra,8(sp)
    80003cc0:	00013403          	ld	s0,0(sp)
    80003cc4:	01010113          	addi	sp,sp,16
    80003cc8:	00008067          	ret

0000000080003ccc <_ZN7WorkerC3runEv>:
    void run() override {
    80003ccc:	ff010113          	addi	sp,sp,-16
    80003cd0:	00113423          	sd	ra,8(sp)
    80003cd4:	00813023          	sd	s0,0(sp)
    80003cd8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003cdc:	00000593          	li	a1,0
    80003ce0:	00000097          	auipc	ra,0x0
    80003ce4:	8bc080e7          	jalr	-1860(ra) # 8000359c <_ZN7WorkerC11workerBodyCEPv>
    }
    80003ce8:	00813083          	ld	ra,8(sp)
    80003cec:	00013403          	ld	s0,0(sp)
    80003cf0:	01010113          	addi	sp,sp,16
    80003cf4:	00008067          	ret

0000000080003cf8 <_ZN7WorkerD3runEv>:
    void run() override {
    80003cf8:	ff010113          	addi	sp,sp,-16
    80003cfc:	00113423          	sd	ra,8(sp)
    80003d00:	00813023          	sd	s0,0(sp)
    80003d04:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003d08:	00000593          	li	a1,0
    80003d0c:	00000097          	auipc	ra,0x0
    80003d10:	a10080e7          	jalr	-1520(ra) # 8000371c <_ZN7WorkerD11workerBodyDEPv>
    }
    80003d14:	00813083          	ld	ra,8(sp)
    80003d18:	00013403          	ld	s0,0(sp)
    80003d1c:	01010113          	addi	sp,sp,16
    80003d20:	00008067          	ret

0000000080003d24 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003d24:	f8010113          	addi	sp,sp,-128
    80003d28:	06113c23          	sd	ra,120(sp)
    80003d2c:	06813823          	sd	s0,112(sp)
    80003d30:	06913423          	sd	s1,104(sp)
    80003d34:	07213023          	sd	s2,96(sp)
    80003d38:	05313c23          	sd	s3,88(sp)
    80003d3c:	05413823          	sd	s4,80(sp)
    80003d40:	05513423          	sd	s5,72(sp)
    80003d44:	05613023          	sd	s6,64(sp)
    80003d48:	03713c23          	sd	s7,56(sp)
    80003d4c:	03813823          	sd	s8,48(sp)
    80003d50:	03913423          	sd	s9,40(sp)
    80003d54:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003d58:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003d5c:	00006517          	auipc	a0,0x6
    80003d60:	3f450513          	addi	a0,a0,1012 # 8000a150 <CONSOLE_STATUS+0x140>
    80003d64:	00002097          	auipc	ra,0x2
    80003d68:	81c080e7          	jalr	-2020(ra) # 80005580 <_Z11printStringPKc>
    getString(input, 30);
    80003d6c:	01e00593          	li	a1,30
    80003d70:	f8040493          	addi	s1,s0,-128
    80003d74:	00048513          	mv	a0,s1
    80003d78:	00002097          	auipc	ra,0x2
    80003d7c:	890080e7          	jalr	-1904(ra) # 80005608 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003d80:	00048513          	mv	a0,s1
    80003d84:	00002097          	auipc	ra,0x2
    80003d88:	95c080e7          	jalr	-1700(ra) # 800056e0 <_Z11stringToIntPKc>
    80003d8c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003d90:	00006517          	auipc	a0,0x6
    80003d94:	3e050513          	addi	a0,a0,992 # 8000a170 <CONSOLE_STATUS+0x160>
    80003d98:	00001097          	auipc	ra,0x1
    80003d9c:	7e8080e7          	jalr	2024(ra) # 80005580 <_Z11printStringPKc>
    getString(input, 30);
    80003da0:	01e00593          	li	a1,30
    80003da4:	00048513          	mv	a0,s1
    80003da8:	00002097          	auipc	ra,0x2
    80003dac:	860080e7          	jalr	-1952(ra) # 80005608 <_Z9getStringPci>
    n = stringToInt(input);
    80003db0:	00048513          	mv	a0,s1
    80003db4:	00002097          	auipc	ra,0x2
    80003db8:	92c080e7          	jalr	-1748(ra) # 800056e0 <_Z11stringToIntPKc>
    80003dbc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003dc0:	00006517          	auipc	a0,0x6
    80003dc4:	3d050513          	addi	a0,a0,976 # 8000a190 <CONSOLE_STATUS+0x180>
    80003dc8:	00001097          	auipc	ra,0x1
    80003dcc:	7b8080e7          	jalr	1976(ra) # 80005580 <_Z11printStringPKc>
    printInt(threadNum);
    80003dd0:	00000613          	li	a2,0
    80003dd4:	00a00593          	li	a1,10
    80003dd8:	00098513          	mv	a0,s3
    80003ddc:	00002097          	auipc	ra,0x2
    80003de0:	954080e7          	jalr	-1708(ra) # 80005730 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003de4:	00006517          	auipc	a0,0x6
    80003de8:	3c450513          	addi	a0,a0,964 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80003dec:	00001097          	auipc	ra,0x1
    80003df0:	794080e7          	jalr	1940(ra) # 80005580 <_Z11printStringPKc>
    printInt(n);
    80003df4:	00000613          	li	a2,0
    80003df8:	00a00593          	li	a1,10
    80003dfc:	00048513          	mv	a0,s1
    80003e00:	00002097          	auipc	ra,0x2
    80003e04:	930080e7          	jalr	-1744(ra) # 80005730 <_Z8printIntiii>
    printString(".\n");
    80003e08:	00006517          	auipc	a0,0x6
    80003e0c:	3b850513          	addi	a0,a0,952 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80003e10:	00001097          	auipc	ra,0x1
    80003e14:	770080e7          	jalr	1904(ra) # 80005580 <_Z11printStringPKc>
    if (threadNum > n) {
    80003e18:	0334c463          	blt	s1,s3,80003e40 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003e1c:	03305c63          	blez	s3,80003e54 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003e20:	03800513          	li	a0,56
    80003e24:	ffffe097          	auipc	ra,0xffffe
    80003e28:	f60080e7          	jalr	-160(ra) # 80001d84 <_Znwm>
    80003e2c:	00050a93          	mv	s5,a0
    80003e30:	00048593          	mv	a1,s1
    80003e34:	00002097          	auipc	ra,0x2
    80003e38:	a1c080e7          	jalr	-1508(ra) # 80005850 <_ZN9BufferCPPC1Ei>
    80003e3c:	0300006f          	j	80003e6c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003e40:	00006517          	auipc	a0,0x6
    80003e44:	38850513          	addi	a0,a0,904 # 8000a1c8 <CONSOLE_STATUS+0x1b8>
    80003e48:	00001097          	auipc	ra,0x1
    80003e4c:	738080e7          	jalr	1848(ra) # 80005580 <_Z11printStringPKc>
        return;
    80003e50:	0140006f          	j	80003e64 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003e54:	00006517          	auipc	a0,0x6
    80003e58:	3b450513          	addi	a0,a0,948 # 8000a208 <CONSOLE_STATUS+0x1f8>
    80003e5c:	00001097          	auipc	ra,0x1
    80003e60:	724080e7          	jalr	1828(ra) # 80005580 <_Z11printStringPKc>
        return;
    80003e64:	000c0113          	mv	sp,s8
    80003e68:	2140006f          	j	8000407c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003e6c:	01000513          	li	a0,16
    80003e70:	ffffe097          	auipc	ra,0xffffe
    80003e74:	f14080e7          	jalr	-236(ra) # 80001d84 <_Znwm>
    80003e78:	00050913          	mv	s2,a0
    80003e7c:	00000593          	li	a1,0
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	244080e7          	jalr	580(ra) # 800020c4 <_ZN9SemaphoreC1Ej>
    80003e88:	00009797          	auipc	a5,0x9
    80003e8c:	0d27bc23          	sd	s2,216(a5) # 8000cf60 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003e90:	00399793          	slli	a5,s3,0x3
    80003e94:	00f78793          	addi	a5,a5,15
    80003e98:	ff07f793          	andi	a5,a5,-16
    80003e9c:	40f10133          	sub	sp,sp,a5
    80003ea0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003ea4:	0019871b          	addiw	a4,s3,1
    80003ea8:	00171793          	slli	a5,a4,0x1
    80003eac:	00e787b3          	add	a5,a5,a4
    80003eb0:	00379793          	slli	a5,a5,0x3
    80003eb4:	00f78793          	addi	a5,a5,15
    80003eb8:	ff07f793          	andi	a5,a5,-16
    80003ebc:	40f10133          	sub	sp,sp,a5
    80003ec0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003ec4:	00199493          	slli	s1,s3,0x1
    80003ec8:	013484b3          	add	s1,s1,s3
    80003ecc:	00349493          	slli	s1,s1,0x3
    80003ed0:	009b04b3          	add	s1,s6,s1
    80003ed4:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003ed8:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003edc:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003ee0:	02800513          	li	a0,40
    80003ee4:	ffffe097          	auipc	ra,0xffffe
    80003ee8:	ea0080e7          	jalr	-352(ra) # 80001d84 <_Znwm>
    80003eec:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003ef0:	ffffe097          	auipc	ra,0xffffe
    80003ef4:	0ac080e7          	jalr	172(ra) # 80001f9c <_ZN6ThreadC1Ev>
    80003ef8:	00009797          	auipc	a5,0x9
    80003efc:	e0878793          	addi	a5,a5,-504 # 8000cd00 <_ZTV8Consumer+0x10>
    80003f00:	00fbb023          	sd	a5,0(s7)
    80003f04:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003f08:	000b8513          	mv	a0,s7
    80003f0c:	ffffe097          	auipc	ra,0xffffe
    80003f10:	0c4080e7          	jalr	196(ra) # 80001fd0 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003f14:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003f18:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003f1c:	00009797          	auipc	a5,0x9
    80003f20:	0447b783          	ld	a5,68(a5) # 8000cf60 <_ZL10waitForAll>
    80003f24:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003f28:	02800513          	li	a0,40
    80003f2c:	ffffe097          	auipc	ra,0xffffe
    80003f30:	e58080e7          	jalr	-424(ra) # 80001d84 <_Znwm>
    80003f34:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003f38:	ffffe097          	auipc	ra,0xffffe
    80003f3c:	064080e7          	jalr	100(ra) # 80001f9c <_ZN6ThreadC1Ev>
    80003f40:	00009797          	auipc	a5,0x9
    80003f44:	d7078793          	addi	a5,a5,-656 # 8000ccb0 <_ZTV16ProducerKeyborad+0x10>
    80003f48:	00f4b023          	sd	a5,0(s1)
    80003f4c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003f50:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003f54:	00048513          	mv	a0,s1
    80003f58:	ffffe097          	auipc	ra,0xffffe
    80003f5c:	078080e7          	jalr	120(ra) # 80001fd0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003f60:	00100913          	li	s2,1
    80003f64:	0300006f          	j	80003f94 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003f68:	00009797          	auipc	a5,0x9
    80003f6c:	d7078793          	addi	a5,a5,-656 # 8000ccd8 <_ZTV8Producer+0x10>
    80003f70:	00fcb023          	sd	a5,0(s9)
    80003f74:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003f78:	00391793          	slli	a5,s2,0x3
    80003f7c:	00fa07b3          	add	a5,s4,a5
    80003f80:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003f84:	000c8513          	mv	a0,s9
    80003f88:	ffffe097          	auipc	ra,0xffffe
    80003f8c:	048080e7          	jalr	72(ra) # 80001fd0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003f90:	0019091b          	addiw	s2,s2,1
    80003f94:	05395263          	bge	s2,s3,80003fd8 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003f98:	00191493          	slli	s1,s2,0x1
    80003f9c:	012484b3          	add	s1,s1,s2
    80003fa0:	00349493          	slli	s1,s1,0x3
    80003fa4:	009b04b3          	add	s1,s6,s1
    80003fa8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003fac:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003fb0:	00009797          	auipc	a5,0x9
    80003fb4:	fb07b783          	ld	a5,-80(a5) # 8000cf60 <_ZL10waitForAll>
    80003fb8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003fbc:	02800513          	li	a0,40
    80003fc0:	ffffe097          	auipc	ra,0xffffe
    80003fc4:	dc4080e7          	jalr	-572(ra) # 80001d84 <_Znwm>
    80003fc8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003fcc:	ffffe097          	auipc	ra,0xffffe
    80003fd0:	fd0080e7          	jalr	-48(ra) # 80001f9c <_ZN6ThreadC1Ev>
    80003fd4:	f95ff06f          	j	80003f68 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003fd8:	ffffe097          	auipc	ra,0xffffe
    80003fdc:	080080e7          	jalr	128(ra) # 80002058 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003fe0:	00000493          	li	s1,0
    80003fe4:	0099ce63          	blt	s3,s1,80004000 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003fe8:	00009517          	auipc	a0,0x9
    80003fec:	f7853503          	ld	a0,-136(a0) # 8000cf60 <_ZL10waitForAll>
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	10c080e7          	jalr	268(ra) # 800020fc <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003ff8:	0014849b          	addiw	s1,s1,1
    80003ffc:	fe9ff06f          	j	80003fe4 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004000:	00009517          	auipc	a0,0x9
    80004004:	f6053503          	ld	a0,-160(a0) # 8000cf60 <_ZL10waitForAll>
    80004008:	00050863          	beqz	a0,80004018 <_Z20testConsumerProducerv+0x2f4>
    8000400c:	00053783          	ld	a5,0(a0)
    80004010:	0087b783          	ld	a5,8(a5)
    80004014:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004018:	00000493          	li	s1,0
    8000401c:	0080006f          	j	80004024 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004020:	0014849b          	addiw	s1,s1,1
    80004024:	0334d263          	bge	s1,s3,80004048 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004028:	00349793          	slli	a5,s1,0x3
    8000402c:	00fa07b3          	add	a5,s4,a5
    80004030:	0007b503          	ld	a0,0(a5)
    80004034:	fe0506e3          	beqz	a0,80004020 <_Z20testConsumerProducerv+0x2fc>
    80004038:	00053783          	ld	a5,0(a0)
    8000403c:	0087b783          	ld	a5,8(a5)
    80004040:	000780e7          	jalr	a5
    80004044:	fddff06f          	j	80004020 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004048:	000b8a63          	beqz	s7,8000405c <_Z20testConsumerProducerv+0x338>
    8000404c:	000bb783          	ld	a5,0(s7)
    80004050:	0087b783          	ld	a5,8(a5)
    80004054:	000b8513          	mv	a0,s7
    80004058:	000780e7          	jalr	a5
    delete buffer;
    8000405c:	000a8e63          	beqz	s5,80004078 <_Z20testConsumerProducerv+0x354>
    80004060:	000a8513          	mv	a0,s5
    80004064:	00002097          	auipc	ra,0x2
    80004068:	ae4080e7          	jalr	-1308(ra) # 80005b48 <_ZN9BufferCPPD1Ev>
    8000406c:	000a8513          	mv	a0,s5
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	d64080e7          	jalr	-668(ra) # 80001dd4 <_ZdlPv>
    80004078:	000c0113          	mv	sp,s8
}
    8000407c:	f8040113          	addi	sp,s0,-128
    80004080:	07813083          	ld	ra,120(sp)
    80004084:	07013403          	ld	s0,112(sp)
    80004088:	06813483          	ld	s1,104(sp)
    8000408c:	06013903          	ld	s2,96(sp)
    80004090:	05813983          	ld	s3,88(sp)
    80004094:	05013a03          	ld	s4,80(sp)
    80004098:	04813a83          	ld	s5,72(sp)
    8000409c:	04013b03          	ld	s6,64(sp)
    800040a0:	03813b83          	ld	s7,56(sp)
    800040a4:	03013c03          	ld	s8,48(sp)
    800040a8:	02813c83          	ld	s9,40(sp)
    800040ac:	08010113          	addi	sp,sp,128
    800040b0:	00008067          	ret
    800040b4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800040b8:	000a8513          	mv	a0,s5
    800040bc:	ffffe097          	auipc	ra,0xffffe
    800040c0:	d18080e7          	jalr	-744(ra) # 80001dd4 <_ZdlPv>
    800040c4:	00048513          	mv	a0,s1
    800040c8:	0000a097          	auipc	ra,0xa
    800040cc:	fb0080e7          	jalr	-80(ra) # 8000e078 <_Unwind_Resume>
    800040d0:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800040d4:	00090513          	mv	a0,s2
    800040d8:	ffffe097          	auipc	ra,0xffffe
    800040dc:	cfc080e7          	jalr	-772(ra) # 80001dd4 <_ZdlPv>
    800040e0:	00048513          	mv	a0,s1
    800040e4:	0000a097          	auipc	ra,0xa
    800040e8:	f94080e7          	jalr	-108(ra) # 8000e078 <_Unwind_Resume>
    800040ec:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800040f0:	000b8513          	mv	a0,s7
    800040f4:	ffffe097          	auipc	ra,0xffffe
    800040f8:	ce0080e7          	jalr	-800(ra) # 80001dd4 <_ZdlPv>
    800040fc:	00048513          	mv	a0,s1
    80004100:	0000a097          	auipc	ra,0xa
    80004104:	f78080e7          	jalr	-136(ra) # 8000e078 <_Unwind_Resume>
    80004108:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000410c:	00048513          	mv	a0,s1
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	cc4080e7          	jalr	-828(ra) # 80001dd4 <_ZdlPv>
    80004118:	00090513          	mv	a0,s2
    8000411c:	0000a097          	auipc	ra,0xa
    80004120:	f5c080e7          	jalr	-164(ra) # 8000e078 <_Unwind_Resume>
    80004124:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004128:	000c8513          	mv	a0,s9
    8000412c:	ffffe097          	auipc	ra,0xffffe
    80004130:	ca8080e7          	jalr	-856(ra) # 80001dd4 <_ZdlPv>
    80004134:	00048513          	mv	a0,s1
    80004138:	0000a097          	auipc	ra,0xa
    8000413c:	f40080e7          	jalr	-192(ra) # 8000e078 <_Unwind_Resume>

0000000080004140 <_ZN8Consumer3runEv>:
    void run() override {
    80004140:	fd010113          	addi	sp,sp,-48
    80004144:	02113423          	sd	ra,40(sp)
    80004148:	02813023          	sd	s0,32(sp)
    8000414c:	00913c23          	sd	s1,24(sp)
    80004150:	01213823          	sd	s2,16(sp)
    80004154:	01313423          	sd	s3,8(sp)
    80004158:	03010413          	addi	s0,sp,48
    8000415c:	00050913          	mv	s2,a0
        int i = 0;
    80004160:	00000993          	li	s3,0
    80004164:	0100006f          	j	80004174 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004168:	00a00513          	li	a0,10
    8000416c:	ffffe097          	auipc	ra,0xffffe
    80004170:	028080e7          	jalr	40(ra) # 80002194 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004174:	00009797          	auipc	a5,0x9
    80004178:	de47a783          	lw	a5,-540(a5) # 8000cf58 <_ZL9threadEnd>
    8000417c:	04079a63          	bnez	a5,800041d0 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004180:	02093783          	ld	a5,32(s2)
    80004184:	0087b503          	ld	a0,8(a5)
    80004188:	00002097          	auipc	ra,0x2
    8000418c:	8ac080e7          	jalr	-1876(ra) # 80005a34 <_ZN9BufferCPP3getEv>
            i++;
    80004190:	0019849b          	addiw	s1,s3,1
    80004194:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004198:	0ff57513          	andi	a0,a0,255
    8000419c:	ffffe097          	auipc	ra,0xffffe
    800041a0:	ff8080e7          	jalr	-8(ra) # 80002194 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800041a4:	05000793          	li	a5,80
    800041a8:	02f4e4bb          	remw	s1,s1,a5
    800041ac:	fc0494e3          	bnez	s1,80004174 <_ZN8Consumer3runEv+0x34>
    800041b0:	fb9ff06f          	j	80004168 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800041b4:	02093783          	ld	a5,32(s2)
    800041b8:	0087b503          	ld	a0,8(a5)
    800041bc:	00002097          	auipc	ra,0x2
    800041c0:	878080e7          	jalr	-1928(ra) # 80005a34 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800041c4:	0ff57513          	andi	a0,a0,255
    800041c8:	ffffe097          	auipc	ra,0xffffe
    800041cc:	fcc080e7          	jalr	-52(ra) # 80002194 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800041d0:	02093783          	ld	a5,32(s2)
    800041d4:	0087b503          	ld	a0,8(a5)
    800041d8:	00002097          	auipc	ra,0x2
    800041dc:	8e8080e7          	jalr	-1816(ra) # 80005ac0 <_ZN9BufferCPP6getCntEv>
    800041e0:	fca04ae3          	bgtz	a0,800041b4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800041e4:	02093783          	ld	a5,32(s2)
    800041e8:	0107b503          	ld	a0,16(a5)
    800041ec:	ffffe097          	auipc	ra,0xffffe
    800041f0:	f48080e7          	jalr	-184(ra) # 80002134 <_ZN9Semaphore6signalEv>
    }
    800041f4:	02813083          	ld	ra,40(sp)
    800041f8:	02013403          	ld	s0,32(sp)
    800041fc:	01813483          	ld	s1,24(sp)
    80004200:	01013903          	ld	s2,16(sp)
    80004204:	00813983          	ld	s3,8(sp)
    80004208:	03010113          	addi	sp,sp,48
    8000420c:	00008067          	ret

0000000080004210 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004210:	ff010113          	addi	sp,sp,-16
    80004214:	00113423          	sd	ra,8(sp)
    80004218:	00813023          	sd	s0,0(sp)
    8000421c:	01010413          	addi	s0,sp,16
    80004220:	00009797          	auipc	a5,0x9
    80004224:	ae078793          	addi	a5,a5,-1312 # 8000cd00 <_ZTV8Consumer+0x10>
    80004228:	00f53023          	sd	a5,0(a0)
    8000422c:	ffffe097          	auipc	ra,0xffffe
    80004230:	c34080e7          	jalr	-972(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80004234:	00813083          	ld	ra,8(sp)
    80004238:	00013403          	ld	s0,0(sp)
    8000423c:	01010113          	addi	sp,sp,16
    80004240:	00008067          	ret

0000000080004244 <_ZN8ConsumerD0Ev>:
    80004244:	fe010113          	addi	sp,sp,-32
    80004248:	00113c23          	sd	ra,24(sp)
    8000424c:	00813823          	sd	s0,16(sp)
    80004250:	00913423          	sd	s1,8(sp)
    80004254:	02010413          	addi	s0,sp,32
    80004258:	00050493          	mv	s1,a0
    8000425c:	00009797          	auipc	a5,0x9
    80004260:	aa478793          	addi	a5,a5,-1372 # 8000cd00 <_ZTV8Consumer+0x10>
    80004264:	00f53023          	sd	a5,0(a0)
    80004268:	ffffe097          	auipc	ra,0xffffe
    8000426c:	bf8080e7          	jalr	-1032(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80004270:	00048513          	mv	a0,s1
    80004274:	ffffe097          	auipc	ra,0xffffe
    80004278:	b60080e7          	jalr	-1184(ra) # 80001dd4 <_ZdlPv>
    8000427c:	01813083          	ld	ra,24(sp)
    80004280:	01013403          	ld	s0,16(sp)
    80004284:	00813483          	ld	s1,8(sp)
    80004288:	02010113          	addi	sp,sp,32
    8000428c:	00008067          	ret

0000000080004290 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004290:	ff010113          	addi	sp,sp,-16
    80004294:	00113423          	sd	ra,8(sp)
    80004298:	00813023          	sd	s0,0(sp)
    8000429c:	01010413          	addi	s0,sp,16
    800042a0:	00009797          	auipc	a5,0x9
    800042a4:	a1078793          	addi	a5,a5,-1520 # 8000ccb0 <_ZTV16ProducerKeyborad+0x10>
    800042a8:	00f53023          	sd	a5,0(a0)
    800042ac:	ffffe097          	auipc	ra,0xffffe
    800042b0:	bb4080e7          	jalr	-1100(ra) # 80001e60 <_ZN6ThreadD1Ev>
    800042b4:	00813083          	ld	ra,8(sp)
    800042b8:	00013403          	ld	s0,0(sp)
    800042bc:	01010113          	addi	sp,sp,16
    800042c0:	00008067          	ret

00000000800042c4 <_ZN16ProducerKeyboradD0Ev>:
    800042c4:	fe010113          	addi	sp,sp,-32
    800042c8:	00113c23          	sd	ra,24(sp)
    800042cc:	00813823          	sd	s0,16(sp)
    800042d0:	00913423          	sd	s1,8(sp)
    800042d4:	02010413          	addi	s0,sp,32
    800042d8:	00050493          	mv	s1,a0
    800042dc:	00009797          	auipc	a5,0x9
    800042e0:	9d478793          	addi	a5,a5,-1580 # 8000ccb0 <_ZTV16ProducerKeyborad+0x10>
    800042e4:	00f53023          	sd	a5,0(a0)
    800042e8:	ffffe097          	auipc	ra,0xffffe
    800042ec:	b78080e7          	jalr	-1160(ra) # 80001e60 <_ZN6ThreadD1Ev>
    800042f0:	00048513          	mv	a0,s1
    800042f4:	ffffe097          	auipc	ra,0xffffe
    800042f8:	ae0080e7          	jalr	-1312(ra) # 80001dd4 <_ZdlPv>
    800042fc:	01813083          	ld	ra,24(sp)
    80004300:	01013403          	ld	s0,16(sp)
    80004304:	00813483          	ld	s1,8(sp)
    80004308:	02010113          	addi	sp,sp,32
    8000430c:	00008067          	ret

0000000080004310 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004310:	ff010113          	addi	sp,sp,-16
    80004314:	00113423          	sd	ra,8(sp)
    80004318:	00813023          	sd	s0,0(sp)
    8000431c:	01010413          	addi	s0,sp,16
    80004320:	00009797          	auipc	a5,0x9
    80004324:	9b878793          	addi	a5,a5,-1608 # 8000ccd8 <_ZTV8Producer+0x10>
    80004328:	00f53023          	sd	a5,0(a0)
    8000432c:	ffffe097          	auipc	ra,0xffffe
    80004330:	b34080e7          	jalr	-1228(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80004334:	00813083          	ld	ra,8(sp)
    80004338:	00013403          	ld	s0,0(sp)
    8000433c:	01010113          	addi	sp,sp,16
    80004340:	00008067          	ret

0000000080004344 <_ZN8ProducerD0Ev>:
    80004344:	fe010113          	addi	sp,sp,-32
    80004348:	00113c23          	sd	ra,24(sp)
    8000434c:	00813823          	sd	s0,16(sp)
    80004350:	00913423          	sd	s1,8(sp)
    80004354:	02010413          	addi	s0,sp,32
    80004358:	00050493          	mv	s1,a0
    8000435c:	00009797          	auipc	a5,0x9
    80004360:	97c78793          	addi	a5,a5,-1668 # 8000ccd8 <_ZTV8Producer+0x10>
    80004364:	00f53023          	sd	a5,0(a0)
    80004368:	ffffe097          	auipc	ra,0xffffe
    8000436c:	af8080e7          	jalr	-1288(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80004370:	00048513          	mv	a0,s1
    80004374:	ffffe097          	auipc	ra,0xffffe
    80004378:	a60080e7          	jalr	-1440(ra) # 80001dd4 <_ZdlPv>
    8000437c:	01813083          	ld	ra,24(sp)
    80004380:	01013403          	ld	s0,16(sp)
    80004384:	00813483          	ld	s1,8(sp)
    80004388:	02010113          	addi	sp,sp,32
    8000438c:	00008067          	ret

0000000080004390 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004390:	fe010113          	addi	sp,sp,-32
    80004394:	00113c23          	sd	ra,24(sp)
    80004398:	00813823          	sd	s0,16(sp)
    8000439c:	00913423          	sd	s1,8(sp)
    800043a0:	02010413          	addi	s0,sp,32
    800043a4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800043a8:	ffffd097          	auipc	ra,0xffffd
    800043ac:	2ac080e7          	jalr	684(ra) # 80001654 <_Z4getcv>
    800043b0:	0005059b          	sext.w	a1,a0
    800043b4:	01b00793          	li	a5,27
    800043b8:	00f58c63          	beq	a1,a5,800043d0 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800043bc:	0204b783          	ld	a5,32(s1)
    800043c0:	0087b503          	ld	a0,8(a5)
    800043c4:	00001097          	auipc	ra,0x1
    800043c8:	5e0080e7          	jalr	1504(ra) # 800059a4 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800043cc:	fddff06f          	j	800043a8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800043d0:	00100793          	li	a5,1
    800043d4:	00009717          	auipc	a4,0x9
    800043d8:	b8f72223          	sw	a5,-1148(a4) # 8000cf58 <_ZL9threadEnd>
        td->buffer->put('!');
    800043dc:	0204b783          	ld	a5,32(s1)
    800043e0:	02100593          	li	a1,33
    800043e4:	0087b503          	ld	a0,8(a5)
    800043e8:	00001097          	auipc	ra,0x1
    800043ec:	5bc080e7          	jalr	1468(ra) # 800059a4 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800043f0:	0204b783          	ld	a5,32(s1)
    800043f4:	0107b503          	ld	a0,16(a5)
    800043f8:	ffffe097          	auipc	ra,0xffffe
    800043fc:	d3c080e7          	jalr	-708(ra) # 80002134 <_ZN9Semaphore6signalEv>
    }
    80004400:	01813083          	ld	ra,24(sp)
    80004404:	01013403          	ld	s0,16(sp)
    80004408:	00813483          	ld	s1,8(sp)
    8000440c:	02010113          	addi	sp,sp,32
    80004410:	00008067          	ret

0000000080004414 <_ZN8Producer3runEv>:
    void run() override {
    80004414:	fe010113          	addi	sp,sp,-32
    80004418:	00113c23          	sd	ra,24(sp)
    8000441c:	00813823          	sd	s0,16(sp)
    80004420:	00913423          	sd	s1,8(sp)
    80004424:	01213023          	sd	s2,0(sp)
    80004428:	02010413          	addi	s0,sp,32
    8000442c:	00050493          	mv	s1,a0
        int i = 0;
    80004430:	00000913          	li	s2,0
        while (!threadEnd) {
    80004434:	00009797          	auipc	a5,0x9
    80004438:	b247a783          	lw	a5,-1244(a5) # 8000cf58 <_ZL9threadEnd>
    8000443c:	04079263          	bnez	a5,80004480 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004440:	0204b783          	ld	a5,32(s1)
    80004444:	0007a583          	lw	a1,0(a5)
    80004448:	0305859b          	addiw	a1,a1,48
    8000444c:	0087b503          	ld	a0,8(a5)
    80004450:	00001097          	auipc	ra,0x1
    80004454:	554080e7          	jalr	1364(ra) # 800059a4 <_ZN9BufferCPP3putEi>
            i++;
    80004458:	0019071b          	addiw	a4,s2,1
    8000445c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004460:	0204b783          	ld	a5,32(s1)
    80004464:	0007a783          	lw	a5,0(a5)
    80004468:	00e787bb          	addw	a5,a5,a4
    8000446c:	00500513          	li	a0,5
    80004470:	02a7e53b          	remw	a0,a5,a0
    80004474:	ffffe097          	auipc	ra,0xffffe
    80004478:	c0c080e7          	jalr	-1012(ra) # 80002080 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    8000447c:	fb9ff06f          	j	80004434 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004480:	0204b783          	ld	a5,32(s1)
    80004484:	0107b503          	ld	a0,16(a5)
    80004488:	ffffe097          	auipc	ra,0xffffe
    8000448c:	cac080e7          	jalr	-852(ra) # 80002134 <_ZN9Semaphore6signalEv>
    }
    80004490:	01813083          	ld	ra,24(sp)
    80004494:	01013403          	ld	s0,16(sp)
    80004498:	00813483          	ld	s1,8(sp)
    8000449c:	00013903          	ld	s2,0(sp)
    800044a0:	02010113          	addi	sp,sp,32
    800044a4:	00008067          	ret

00000000800044a8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800044a8:	fe010113          	addi	sp,sp,-32
    800044ac:	00113c23          	sd	ra,24(sp)
    800044b0:	00813823          	sd	s0,16(sp)
    800044b4:	00913423          	sd	s1,8(sp)
    800044b8:	01213023          	sd	s2,0(sp)
    800044bc:	02010413          	addi	s0,sp,32
    800044c0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800044c4:	00100793          	li	a5,1
    800044c8:	02a7f863          	bgeu	a5,a0,800044f8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800044cc:	00a00793          	li	a5,10
    800044d0:	02f577b3          	remu	a5,a0,a5
    800044d4:	02078e63          	beqz	a5,80004510 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800044d8:	fff48513          	addi	a0,s1,-1
    800044dc:	00000097          	auipc	ra,0x0
    800044e0:	fcc080e7          	jalr	-52(ra) # 800044a8 <_ZL9fibonaccim>
    800044e4:	00050913          	mv	s2,a0
    800044e8:	ffe48513          	addi	a0,s1,-2
    800044ec:	00000097          	auipc	ra,0x0
    800044f0:	fbc080e7          	jalr	-68(ra) # 800044a8 <_ZL9fibonaccim>
    800044f4:	00a90533          	add	a0,s2,a0
}
    800044f8:	01813083          	ld	ra,24(sp)
    800044fc:	01013403          	ld	s0,16(sp)
    80004500:	00813483          	ld	s1,8(sp)
    80004504:	00013903          	ld	s2,0(sp)
    80004508:	02010113          	addi	sp,sp,32
    8000450c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004510:	ffffd097          	auipc	ra,0xffffd
    80004514:	f8c080e7          	jalr	-116(ra) # 8000149c <_Z15thread_dispatchv>
    80004518:	fc1ff06f          	j	800044d8 <_ZL9fibonaccim+0x30>

000000008000451c <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000451c:	fe010113          	addi	sp,sp,-32
    80004520:	00113c23          	sd	ra,24(sp)
    80004524:	00813823          	sd	s0,16(sp)
    80004528:	00913423          	sd	s1,8(sp)
    8000452c:	01213023          	sd	s2,0(sp)
    80004530:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004534:	00a00493          	li	s1,10
    80004538:	0400006f          	j	80004578 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000453c:	00006517          	auipc	a0,0x6
    80004540:	d6c50513          	addi	a0,a0,-660 # 8000a2a8 <CONSOLE_STATUS+0x298>
    80004544:	00001097          	auipc	ra,0x1
    80004548:	03c080e7          	jalr	60(ra) # 80005580 <_Z11printStringPKc>
    8000454c:	00000613          	li	a2,0
    80004550:	00a00593          	li	a1,10
    80004554:	00048513          	mv	a0,s1
    80004558:	00001097          	auipc	ra,0x1
    8000455c:	1d8080e7          	jalr	472(ra) # 80005730 <_Z8printIntiii>
    80004560:	00006517          	auipc	a0,0x6
    80004564:	df050513          	addi	a0,a0,-528 # 8000a350 <CONSOLE_STATUS+0x340>
    80004568:	00001097          	auipc	ra,0x1
    8000456c:	018080e7          	jalr	24(ra) # 80005580 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004570:	0014849b          	addiw	s1,s1,1
    80004574:	0ff4f493          	andi	s1,s1,255
    80004578:	00c00793          	li	a5,12
    8000457c:	fc97f0e3          	bgeu	a5,s1,8000453c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004580:	00006517          	auipc	a0,0x6
    80004584:	d3050513          	addi	a0,a0,-720 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80004588:	00001097          	auipc	ra,0x1
    8000458c:	ff8080e7          	jalr	-8(ra) # 80005580 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004590:	00500313          	li	t1,5
    thread_dispatch();
    80004594:	ffffd097          	auipc	ra,0xffffd
    80004598:	f08080e7          	jalr	-248(ra) # 8000149c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000459c:	01000513          	li	a0,16
    800045a0:	00000097          	auipc	ra,0x0
    800045a4:	f08080e7          	jalr	-248(ra) # 800044a8 <_ZL9fibonaccim>
    800045a8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800045ac:	00006517          	auipc	a0,0x6
    800045b0:	d1450513          	addi	a0,a0,-748 # 8000a2c0 <CONSOLE_STATUS+0x2b0>
    800045b4:	00001097          	auipc	ra,0x1
    800045b8:	fcc080e7          	jalr	-52(ra) # 80005580 <_Z11printStringPKc>
    800045bc:	00000613          	li	a2,0
    800045c0:	00a00593          	li	a1,10
    800045c4:	0009051b          	sext.w	a0,s2
    800045c8:	00001097          	auipc	ra,0x1
    800045cc:	168080e7          	jalr	360(ra) # 80005730 <_Z8printIntiii>
    800045d0:	00006517          	auipc	a0,0x6
    800045d4:	d8050513          	addi	a0,a0,-640 # 8000a350 <CONSOLE_STATUS+0x340>
    800045d8:	00001097          	auipc	ra,0x1
    800045dc:	fa8080e7          	jalr	-88(ra) # 80005580 <_Z11printStringPKc>
    800045e0:	0400006f          	j	80004620 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800045e4:	00006517          	auipc	a0,0x6
    800045e8:	cc450513          	addi	a0,a0,-828 # 8000a2a8 <CONSOLE_STATUS+0x298>
    800045ec:	00001097          	auipc	ra,0x1
    800045f0:	f94080e7          	jalr	-108(ra) # 80005580 <_Z11printStringPKc>
    800045f4:	00000613          	li	a2,0
    800045f8:	00a00593          	li	a1,10
    800045fc:	00048513          	mv	a0,s1
    80004600:	00001097          	auipc	ra,0x1
    80004604:	130080e7          	jalr	304(ra) # 80005730 <_Z8printIntiii>
    80004608:	00006517          	auipc	a0,0x6
    8000460c:	d4850513          	addi	a0,a0,-696 # 8000a350 <CONSOLE_STATUS+0x340>
    80004610:	00001097          	auipc	ra,0x1
    80004614:	f70080e7          	jalr	-144(ra) # 80005580 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004618:	0014849b          	addiw	s1,s1,1
    8000461c:	0ff4f493          	andi	s1,s1,255
    80004620:	00f00793          	li	a5,15
    80004624:	fc97f0e3          	bgeu	a5,s1,800045e4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004628:	00006517          	auipc	a0,0x6
    8000462c:	ca850513          	addi	a0,a0,-856 # 8000a2d0 <CONSOLE_STATUS+0x2c0>
    80004630:	00001097          	auipc	ra,0x1
    80004634:	f50080e7          	jalr	-176(ra) # 80005580 <_Z11printStringPKc>
    finishedD = true;
    80004638:	00100793          	li	a5,1
    8000463c:	00009717          	auipc	a4,0x9
    80004640:	92f70623          	sb	a5,-1748(a4) # 8000cf68 <_ZL9finishedD>
    thread_dispatch();
    80004644:	ffffd097          	auipc	ra,0xffffd
    80004648:	e58080e7          	jalr	-424(ra) # 8000149c <_Z15thread_dispatchv>
}
    8000464c:	01813083          	ld	ra,24(sp)
    80004650:	01013403          	ld	s0,16(sp)
    80004654:	00813483          	ld	s1,8(sp)
    80004658:	00013903          	ld	s2,0(sp)
    8000465c:	02010113          	addi	sp,sp,32
    80004660:	00008067          	ret

0000000080004664 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004664:	fe010113          	addi	sp,sp,-32
    80004668:	00113c23          	sd	ra,24(sp)
    8000466c:	00813823          	sd	s0,16(sp)
    80004670:	00913423          	sd	s1,8(sp)
    80004674:	01213023          	sd	s2,0(sp)
    80004678:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000467c:	00000493          	li	s1,0
    80004680:	0400006f          	j	800046c0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004684:	00006517          	auipc	a0,0x6
    80004688:	be450513          	addi	a0,a0,-1052 # 8000a268 <CONSOLE_STATUS+0x258>
    8000468c:	00001097          	auipc	ra,0x1
    80004690:	ef4080e7          	jalr	-268(ra) # 80005580 <_Z11printStringPKc>
    80004694:	00000613          	li	a2,0
    80004698:	00a00593          	li	a1,10
    8000469c:	00048513          	mv	a0,s1
    800046a0:	00001097          	auipc	ra,0x1
    800046a4:	090080e7          	jalr	144(ra) # 80005730 <_Z8printIntiii>
    800046a8:	00006517          	auipc	a0,0x6
    800046ac:	ca850513          	addi	a0,a0,-856 # 8000a350 <CONSOLE_STATUS+0x340>
    800046b0:	00001097          	auipc	ra,0x1
    800046b4:	ed0080e7          	jalr	-304(ra) # 80005580 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800046b8:	0014849b          	addiw	s1,s1,1
    800046bc:	0ff4f493          	andi	s1,s1,255
    800046c0:	00200793          	li	a5,2
    800046c4:	fc97f0e3          	bgeu	a5,s1,80004684 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800046c8:	00006517          	auipc	a0,0x6
    800046cc:	ba850513          	addi	a0,a0,-1112 # 8000a270 <CONSOLE_STATUS+0x260>
    800046d0:	00001097          	auipc	ra,0x1
    800046d4:	eb0080e7          	jalr	-336(ra) # 80005580 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800046d8:	00700313          	li	t1,7
    thread_dispatch();
    800046dc:	ffffd097          	auipc	ra,0xffffd
    800046e0:	dc0080e7          	jalr	-576(ra) # 8000149c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800046e4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800046e8:	00006517          	auipc	a0,0x6
    800046ec:	b9850513          	addi	a0,a0,-1128 # 8000a280 <CONSOLE_STATUS+0x270>
    800046f0:	00001097          	auipc	ra,0x1
    800046f4:	e90080e7          	jalr	-368(ra) # 80005580 <_Z11printStringPKc>
    800046f8:	00000613          	li	a2,0
    800046fc:	00a00593          	li	a1,10
    80004700:	0009051b          	sext.w	a0,s2
    80004704:	00001097          	auipc	ra,0x1
    80004708:	02c080e7          	jalr	44(ra) # 80005730 <_Z8printIntiii>
    8000470c:	00006517          	auipc	a0,0x6
    80004710:	c4450513          	addi	a0,a0,-956 # 8000a350 <CONSOLE_STATUS+0x340>
    80004714:	00001097          	auipc	ra,0x1
    80004718:	e6c080e7          	jalr	-404(ra) # 80005580 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000471c:	00c00513          	li	a0,12
    80004720:	00000097          	auipc	ra,0x0
    80004724:	d88080e7          	jalr	-632(ra) # 800044a8 <_ZL9fibonaccim>
    80004728:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000472c:	00006517          	auipc	a0,0x6
    80004730:	b5c50513          	addi	a0,a0,-1188 # 8000a288 <CONSOLE_STATUS+0x278>
    80004734:	00001097          	auipc	ra,0x1
    80004738:	e4c080e7          	jalr	-436(ra) # 80005580 <_Z11printStringPKc>
    8000473c:	00000613          	li	a2,0
    80004740:	00a00593          	li	a1,10
    80004744:	0009051b          	sext.w	a0,s2
    80004748:	00001097          	auipc	ra,0x1
    8000474c:	fe8080e7          	jalr	-24(ra) # 80005730 <_Z8printIntiii>
    80004750:	00006517          	auipc	a0,0x6
    80004754:	c0050513          	addi	a0,a0,-1024 # 8000a350 <CONSOLE_STATUS+0x340>
    80004758:	00001097          	auipc	ra,0x1
    8000475c:	e28080e7          	jalr	-472(ra) # 80005580 <_Z11printStringPKc>
    80004760:	0400006f          	j	800047a0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004764:	00006517          	auipc	a0,0x6
    80004768:	b0450513          	addi	a0,a0,-1276 # 8000a268 <CONSOLE_STATUS+0x258>
    8000476c:	00001097          	auipc	ra,0x1
    80004770:	e14080e7          	jalr	-492(ra) # 80005580 <_Z11printStringPKc>
    80004774:	00000613          	li	a2,0
    80004778:	00a00593          	li	a1,10
    8000477c:	00048513          	mv	a0,s1
    80004780:	00001097          	auipc	ra,0x1
    80004784:	fb0080e7          	jalr	-80(ra) # 80005730 <_Z8printIntiii>
    80004788:	00006517          	auipc	a0,0x6
    8000478c:	bc850513          	addi	a0,a0,-1080 # 8000a350 <CONSOLE_STATUS+0x340>
    80004790:	00001097          	auipc	ra,0x1
    80004794:	df0080e7          	jalr	-528(ra) # 80005580 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004798:	0014849b          	addiw	s1,s1,1
    8000479c:	0ff4f493          	andi	s1,s1,255
    800047a0:	00500793          	li	a5,5
    800047a4:	fc97f0e3          	bgeu	a5,s1,80004764 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    800047a8:	00006517          	auipc	a0,0x6
    800047ac:	af050513          	addi	a0,a0,-1296 # 8000a298 <CONSOLE_STATUS+0x288>
    800047b0:	00001097          	auipc	ra,0x1
    800047b4:	dd0080e7          	jalr	-560(ra) # 80005580 <_Z11printStringPKc>
    finishedC = true;
    800047b8:	00100793          	li	a5,1
    800047bc:	00008717          	auipc	a4,0x8
    800047c0:	7af706a3          	sb	a5,1965(a4) # 8000cf69 <_ZL9finishedC>
    thread_dispatch();
    800047c4:	ffffd097          	auipc	ra,0xffffd
    800047c8:	cd8080e7          	jalr	-808(ra) # 8000149c <_Z15thread_dispatchv>
}
    800047cc:	01813083          	ld	ra,24(sp)
    800047d0:	01013403          	ld	s0,16(sp)
    800047d4:	00813483          	ld	s1,8(sp)
    800047d8:	00013903          	ld	s2,0(sp)
    800047dc:	02010113          	addi	sp,sp,32
    800047e0:	00008067          	ret

00000000800047e4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800047e4:	fe010113          	addi	sp,sp,-32
    800047e8:	00113c23          	sd	ra,24(sp)
    800047ec:	00813823          	sd	s0,16(sp)
    800047f0:	00913423          	sd	s1,8(sp)
    800047f4:	01213023          	sd	s2,0(sp)
    800047f8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800047fc:	00000913          	li	s2,0
    80004800:	0380006f          	j	80004838 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004804:	ffffd097          	auipc	ra,0xffffd
    80004808:	c98080e7          	jalr	-872(ra) # 8000149c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000480c:	00148493          	addi	s1,s1,1
    80004810:	000027b7          	lui	a5,0x2
    80004814:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004818:	0097ee63          	bltu	a5,s1,80004834 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000481c:	00000713          	li	a4,0
    80004820:	000077b7          	lui	a5,0x7
    80004824:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004828:	fce7eee3          	bltu	a5,a4,80004804 <_ZL11workerBodyBPv+0x20>
    8000482c:	00170713          	addi	a4,a4,1
    80004830:	ff1ff06f          	j	80004820 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004834:	00190913          	addi	s2,s2,1
    80004838:	00f00793          	li	a5,15
    8000483c:	0527e063          	bltu	a5,s2,8000487c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004840:	00006517          	auipc	a0,0x6
    80004844:	a1050513          	addi	a0,a0,-1520 # 8000a250 <CONSOLE_STATUS+0x240>
    80004848:	00001097          	auipc	ra,0x1
    8000484c:	d38080e7          	jalr	-712(ra) # 80005580 <_Z11printStringPKc>
    80004850:	00000613          	li	a2,0
    80004854:	00a00593          	li	a1,10
    80004858:	0009051b          	sext.w	a0,s2
    8000485c:	00001097          	auipc	ra,0x1
    80004860:	ed4080e7          	jalr	-300(ra) # 80005730 <_Z8printIntiii>
    80004864:	00006517          	auipc	a0,0x6
    80004868:	aec50513          	addi	a0,a0,-1300 # 8000a350 <CONSOLE_STATUS+0x340>
    8000486c:	00001097          	auipc	ra,0x1
    80004870:	d14080e7          	jalr	-748(ra) # 80005580 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004874:	00000493          	li	s1,0
    80004878:	f99ff06f          	j	80004810 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    8000487c:	00006517          	auipc	a0,0x6
    80004880:	9dc50513          	addi	a0,a0,-1572 # 8000a258 <CONSOLE_STATUS+0x248>
    80004884:	00001097          	auipc	ra,0x1
    80004888:	cfc080e7          	jalr	-772(ra) # 80005580 <_Z11printStringPKc>
    finishedB = true;
    8000488c:	00100793          	li	a5,1
    80004890:	00008717          	auipc	a4,0x8
    80004894:	6cf70d23          	sb	a5,1754(a4) # 8000cf6a <_ZL9finishedB>
    thread_dispatch();
    80004898:	ffffd097          	auipc	ra,0xffffd
    8000489c:	c04080e7          	jalr	-1020(ra) # 8000149c <_Z15thread_dispatchv>
}
    800048a0:	01813083          	ld	ra,24(sp)
    800048a4:	01013403          	ld	s0,16(sp)
    800048a8:	00813483          	ld	s1,8(sp)
    800048ac:	00013903          	ld	s2,0(sp)
    800048b0:	02010113          	addi	sp,sp,32
    800048b4:	00008067          	ret

00000000800048b8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800048b8:	fe010113          	addi	sp,sp,-32
    800048bc:	00113c23          	sd	ra,24(sp)
    800048c0:	00813823          	sd	s0,16(sp)
    800048c4:	00913423          	sd	s1,8(sp)
    800048c8:	01213023          	sd	s2,0(sp)
    800048cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800048d0:	00000913          	li	s2,0
    800048d4:	0380006f          	j	8000490c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800048d8:	ffffd097          	auipc	ra,0xffffd
    800048dc:	bc4080e7          	jalr	-1084(ra) # 8000149c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800048e0:	00148493          	addi	s1,s1,1
    800048e4:	000027b7          	lui	a5,0x2
    800048e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800048ec:	0097ee63          	bltu	a5,s1,80004908 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800048f0:	00000713          	li	a4,0
    800048f4:	000077b7          	lui	a5,0x7
    800048f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800048fc:	fce7eee3          	bltu	a5,a4,800048d8 <_ZL11workerBodyAPv+0x20>
    80004900:	00170713          	addi	a4,a4,1
    80004904:	ff1ff06f          	j	800048f4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004908:	00190913          	addi	s2,s2,1
    8000490c:	00900793          	li	a5,9
    80004910:	0527e063          	bltu	a5,s2,80004950 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004914:	00006517          	auipc	a0,0x6
    80004918:	92450513          	addi	a0,a0,-1756 # 8000a238 <CONSOLE_STATUS+0x228>
    8000491c:	00001097          	auipc	ra,0x1
    80004920:	c64080e7          	jalr	-924(ra) # 80005580 <_Z11printStringPKc>
    80004924:	00000613          	li	a2,0
    80004928:	00a00593          	li	a1,10
    8000492c:	0009051b          	sext.w	a0,s2
    80004930:	00001097          	auipc	ra,0x1
    80004934:	e00080e7          	jalr	-512(ra) # 80005730 <_Z8printIntiii>
    80004938:	00006517          	auipc	a0,0x6
    8000493c:	a1850513          	addi	a0,a0,-1512 # 8000a350 <CONSOLE_STATUS+0x340>
    80004940:	00001097          	auipc	ra,0x1
    80004944:	c40080e7          	jalr	-960(ra) # 80005580 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004948:	00000493          	li	s1,0
    8000494c:	f99ff06f          	j	800048e4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004950:	00006517          	auipc	a0,0x6
    80004954:	8f050513          	addi	a0,a0,-1808 # 8000a240 <CONSOLE_STATUS+0x230>
    80004958:	00001097          	auipc	ra,0x1
    8000495c:	c28080e7          	jalr	-984(ra) # 80005580 <_Z11printStringPKc>
    finishedA = true;
    80004960:	00100793          	li	a5,1
    80004964:	00008717          	auipc	a4,0x8
    80004968:	60f703a3          	sb	a5,1543(a4) # 8000cf6b <_ZL9finishedA>
}
    8000496c:	01813083          	ld	ra,24(sp)
    80004970:	01013403          	ld	s0,16(sp)
    80004974:	00813483          	ld	s1,8(sp)
    80004978:	00013903          	ld	s2,0(sp)
    8000497c:	02010113          	addi	sp,sp,32
    80004980:	00008067          	ret

0000000080004984 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004984:	fd010113          	addi	sp,sp,-48
    80004988:	02113423          	sd	ra,40(sp)
    8000498c:	02813023          	sd	s0,32(sp)
    80004990:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004994:	00000613          	li	a2,0
    80004998:	00000597          	auipc	a1,0x0
    8000499c:	f2058593          	addi	a1,a1,-224 # 800048b8 <_ZL11workerBodyAPv>
    800049a0:	fd040513          	addi	a0,s0,-48
    800049a4:	ffffd097          	auipc	ra,0xffffd
    800049a8:	a58080e7          	jalr	-1448(ra) # 800013fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800049ac:	00006517          	auipc	a0,0x6
    800049b0:	93450513          	addi	a0,a0,-1740 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    800049b4:	00001097          	auipc	ra,0x1
    800049b8:	bcc080e7          	jalr	-1076(ra) # 80005580 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800049bc:	00000613          	li	a2,0
    800049c0:	00000597          	auipc	a1,0x0
    800049c4:	e2458593          	addi	a1,a1,-476 # 800047e4 <_ZL11workerBodyBPv>
    800049c8:	fd840513          	addi	a0,s0,-40
    800049cc:	ffffd097          	auipc	ra,0xffffd
    800049d0:	a30080e7          	jalr	-1488(ra) # 800013fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800049d4:	00006517          	auipc	a0,0x6
    800049d8:	92450513          	addi	a0,a0,-1756 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    800049dc:	00001097          	auipc	ra,0x1
    800049e0:	ba4080e7          	jalr	-1116(ra) # 80005580 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800049e4:	00000613          	li	a2,0
    800049e8:	00000597          	auipc	a1,0x0
    800049ec:	c7c58593          	addi	a1,a1,-900 # 80004664 <_ZL11workerBodyCPv>
    800049f0:	fe040513          	addi	a0,s0,-32
    800049f4:	ffffd097          	auipc	ra,0xffffd
    800049f8:	a08080e7          	jalr	-1528(ra) # 800013fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800049fc:	00006517          	auipc	a0,0x6
    80004a00:	91450513          	addi	a0,a0,-1772 # 8000a310 <CONSOLE_STATUS+0x300>
    80004a04:	00001097          	auipc	ra,0x1
    80004a08:	b7c080e7          	jalr	-1156(ra) # 80005580 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004a0c:	00000613          	li	a2,0
    80004a10:	00000597          	auipc	a1,0x0
    80004a14:	b0c58593          	addi	a1,a1,-1268 # 8000451c <_ZL11workerBodyDPv>
    80004a18:	fe840513          	addi	a0,s0,-24
    80004a1c:	ffffd097          	auipc	ra,0xffffd
    80004a20:	9e0080e7          	jalr	-1568(ra) # 800013fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004a24:	00006517          	auipc	a0,0x6
    80004a28:	90450513          	addi	a0,a0,-1788 # 8000a328 <CONSOLE_STATUS+0x318>
    80004a2c:	00001097          	auipc	ra,0x1
    80004a30:	b54080e7          	jalr	-1196(ra) # 80005580 <_Z11printStringPKc>
    80004a34:	00c0006f          	j	80004a40 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004a38:	ffffd097          	auipc	ra,0xffffd
    80004a3c:	a64080e7          	jalr	-1436(ra) # 8000149c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004a40:	00008797          	auipc	a5,0x8
    80004a44:	52b7c783          	lbu	a5,1323(a5) # 8000cf6b <_ZL9finishedA>
    80004a48:	fe0788e3          	beqz	a5,80004a38 <_Z18Threads_C_API_testv+0xb4>
    80004a4c:	00008797          	auipc	a5,0x8
    80004a50:	51e7c783          	lbu	a5,1310(a5) # 8000cf6a <_ZL9finishedB>
    80004a54:	fe0782e3          	beqz	a5,80004a38 <_Z18Threads_C_API_testv+0xb4>
    80004a58:	00008797          	auipc	a5,0x8
    80004a5c:	5117c783          	lbu	a5,1297(a5) # 8000cf69 <_ZL9finishedC>
    80004a60:	fc078ce3          	beqz	a5,80004a38 <_Z18Threads_C_API_testv+0xb4>
    80004a64:	00008797          	auipc	a5,0x8
    80004a68:	5047c783          	lbu	a5,1284(a5) # 8000cf68 <_ZL9finishedD>
    80004a6c:	fc0786e3          	beqz	a5,80004a38 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004a70:	02813083          	ld	ra,40(sp)
    80004a74:	02013403          	ld	s0,32(sp)
    80004a78:	03010113          	addi	sp,sp,48
    80004a7c:	00008067          	ret

0000000080004a80 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004a80:	fd010113          	addi	sp,sp,-48
    80004a84:	02113423          	sd	ra,40(sp)
    80004a88:	02813023          	sd	s0,32(sp)
    80004a8c:	00913c23          	sd	s1,24(sp)
    80004a90:	01213823          	sd	s2,16(sp)
    80004a94:	01313423          	sd	s3,8(sp)
    80004a98:	03010413          	addi	s0,sp,48
    80004a9c:	00050993          	mv	s3,a0
    80004aa0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004aa4:	00000913          	li	s2,0
    80004aa8:	00c0006f          	j	80004ab4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004aac:	ffffd097          	auipc	ra,0xffffd
    80004ab0:	5ac080e7          	jalr	1452(ra) # 80002058 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004ab4:	ffffd097          	auipc	ra,0xffffd
    80004ab8:	ba0080e7          	jalr	-1120(ra) # 80001654 <_Z4getcv>
    80004abc:	0005059b          	sext.w	a1,a0
    80004ac0:	01b00793          	li	a5,27
    80004ac4:	02f58a63          	beq	a1,a5,80004af8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004ac8:	0084b503          	ld	a0,8(s1)
    80004acc:	00001097          	auipc	ra,0x1
    80004ad0:	ed8080e7          	jalr	-296(ra) # 800059a4 <_ZN9BufferCPP3putEi>
        i++;
    80004ad4:	0019071b          	addiw	a4,s2,1
    80004ad8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004adc:	0004a683          	lw	a3,0(s1)
    80004ae0:	0026979b          	slliw	a5,a3,0x2
    80004ae4:	00d787bb          	addw	a5,a5,a3
    80004ae8:	0017979b          	slliw	a5,a5,0x1
    80004aec:	02f767bb          	remw	a5,a4,a5
    80004af0:	fc0792e3          	bnez	a5,80004ab4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004af4:	fb9ff06f          	j	80004aac <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004af8:	00100793          	li	a5,1
    80004afc:	00008717          	auipc	a4,0x8
    80004b00:	46f72a23          	sw	a5,1140(a4) # 8000cf70 <_ZL9threadEnd>
    td->buffer->put('!');
    80004b04:	0209b783          	ld	a5,32(s3)
    80004b08:	02100593          	li	a1,33
    80004b0c:	0087b503          	ld	a0,8(a5)
    80004b10:	00001097          	auipc	ra,0x1
    80004b14:	e94080e7          	jalr	-364(ra) # 800059a4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004b18:	0104b503          	ld	a0,16(s1)
    80004b1c:	ffffd097          	auipc	ra,0xffffd
    80004b20:	618080e7          	jalr	1560(ra) # 80002134 <_ZN9Semaphore6signalEv>
}
    80004b24:	02813083          	ld	ra,40(sp)
    80004b28:	02013403          	ld	s0,32(sp)
    80004b2c:	01813483          	ld	s1,24(sp)
    80004b30:	01013903          	ld	s2,16(sp)
    80004b34:	00813983          	ld	s3,8(sp)
    80004b38:	03010113          	addi	sp,sp,48
    80004b3c:	00008067          	ret

0000000080004b40 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004b40:	fe010113          	addi	sp,sp,-32
    80004b44:	00113c23          	sd	ra,24(sp)
    80004b48:	00813823          	sd	s0,16(sp)
    80004b4c:	00913423          	sd	s1,8(sp)
    80004b50:	01213023          	sd	s2,0(sp)
    80004b54:	02010413          	addi	s0,sp,32
    80004b58:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004b5c:	00000913          	li	s2,0
    80004b60:	00c0006f          	j	80004b6c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004b64:	ffffd097          	auipc	ra,0xffffd
    80004b68:	4f4080e7          	jalr	1268(ra) # 80002058 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004b6c:	00008797          	auipc	a5,0x8
    80004b70:	4047a783          	lw	a5,1028(a5) # 8000cf70 <_ZL9threadEnd>
    80004b74:	02079e63          	bnez	a5,80004bb0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004b78:	0004a583          	lw	a1,0(s1)
    80004b7c:	0305859b          	addiw	a1,a1,48
    80004b80:	0084b503          	ld	a0,8(s1)
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	e20080e7          	jalr	-480(ra) # 800059a4 <_ZN9BufferCPP3putEi>
        i++;
    80004b8c:	0019071b          	addiw	a4,s2,1
    80004b90:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004b94:	0004a683          	lw	a3,0(s1)
    80004b98:	0026979b          	slliw	a5,a3,0x2
    80004b9c:	00d787bb          	addw	a5,a5,a3
    80004ba0:	0017979b          	slliw	a5,a5,0x1
    80004ba4:	02f767bb          	remw	a5,a4,a5
    80004ba8:	fc0792e3          	bnez	a5,80004b6c <_ZN12ProducerSync8producerEPv+0x2c>
    80004bac:	fb9ff06f          	j	80004b64 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004bb0:	0104b503          	ld	a0,16(s1)
    80004bb4:	ffffd097          	auipc	ra,0xffffd
    80004bb8:	580080e7          	jalr	1408(ra) # 80002134 <_ZN9Semaphore6signalEv>
}
    80004bbc:	01813083          	ld	ra,24(sp)
    80004bc0:	01013403          	ld	s0,16(sp)
    80004bc4:	00813483          	ld	s1,8(sp)
    80004bc8:	00013903          	ld	s2,0(sp)
    80004bcc:	02010113          	addi	sp,sp,32
    80004bd0:	00008067          	ret

0000000080004bd4 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004bd4:	fd010113          	addi	sp,sp,-48
    80004bd8:	02113423          	sd	ra,40(sp)
    80004bdc:	02813023          	sd	s0,32(sp)
    80004be0:	00913c23          	sd	s1,24(sp)
    80004be4:	01213823          	sd	s2,16(sp)
    80004be8:	01313423          	sd	s3,8(sp)
    80004bec:	01413023          	sd	s4,0(sp)
    80004bf0:	03010413          	addi	s0,sp,48
    80004bf4:	00050993          	mv	s3,a0
    80004bf8:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004bfc:	00000a13          	li	s4,0
    80004c00:	01c0006f          	j	80004c1c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004c04:	ffffd097          	auipc	ra,0xffffd
    80004c08:	454080e7          	jalr	1108(ra) # 80002058 <_ZN6Thread8dispatchEv>
    80004c0c:	0500006f          	j	80004c5c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004c10:	00a00513          	li	a0,10
    80004c14:	ffffd097          	auipc	ra,0xffffd
    80004c18:	a18080e7          	jalr	-1512(ra) # 8000162c <_Z4putcc>
    while (!threadEnd) {
    80004c1c:	00008797          	auipc	a5,0x8
    80004c20:	3547a783          	lw	a5,852(a5) # 8000cf70 <_ZL9threadEnd>
    80004c24:	06079263          	bnez	a5,80004c88 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004c28:	00893503          	ld	a0,8(s2)
    80004c2c:	00001097          	auipc	ra,0x1
    80004c30:	e08080e7          	jalr	-504(ra) # 80005a34 <_ZN9BufferCPP3getEv>
        i++;
    80004c34:	001a049b          	addiw	s1,s4,1
    80004c38:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004c3c:	0ff57513          	andi	a0,a0,255
    80004c40:	ffffd097          	auipc	ra,0xffffd
    80004c44:	9ec080e7          	jalr	-1556(ra) # 8000162c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004c48:	00092703          	lw	a4,0(s2)
    80004c4c:	0027179b          	slliw	a5,a4,0x2
    80004c50:	00e787bb          	addw	a5,a5,a4
    80004c54:	02f4e7bb          	remw	a5,s1,a5
    80004c58:	fa0786e3          	beqz	a5,80004c04 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004c5c:	05000793          	li	a5,80
    80004c60:	02f4e4bb          	remw	s1,s1,a5
    80004c64:	fa049ce3          	bnez	s1,80004c1c <_ZN12ConsumerSync8consumerEPv+0x48>
    80004c68:	fa9ff06f          	j	80004c10 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004c6c:	0209b783          	ld	a5,32(s3)
    80004c70:	0087b503          	ld	a0,8(a5)
    80004c74:	00001097          	auipc	ra,0x1
    80004c78:	dc0080e7          	jalr	-576(ra) # 80005a34 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004c7c:	0ff57513          	andi	a0,a0,255
    80004c80:	ffffd097          	auipc	ra,0xffffd
    80004c84:	514080e7          	jalr	1300(ra) # 80002194 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004c88:	0209b783          	ld	a5,32(s3)
    80004c8c:	0087b503          	ld	a0,8(a5)
    80004c90:	00001097          	auipc	ra,0x1
    80004c94:	e30080e7          	jalr	-464(ra) # 80005ac0 <_ZN9BufferCPP6getCntEv>
    80004c98:	fca04ae3          	bgtz	a0,80004c6c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004c9c:	01093503          	ld	a0,16(s2)
    80004ca0:	ffffd097          	auipc	ra,0xffffd
    80004ca4:	494080e7          	jalr	1172(ra) # 80002134 <_ZN9Semaphore6signalEv>
}
    80004ca8:	02813083          	ld	ra,40(sp)
    80004cac:	02013403          	ld	s0,32(sp)
    80004cb0:	01813483          	ld	s1,24(sp)
    80004cb4:	01013903          	ld	s2,16(sp)
    80004cb8:	00813983          	ld	s3,8(sp)
    80004cbc:	00013a03          	ld	s4,0(sp)
    80004cc0:	03010113          	addi	sp,sp,48
    80004cc4:	00008067          	ret

0000000080004cc8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004cc8:	f8010113          	addi	sp,sp,-128
    80004ccc:	06113c23          	sd	ra,120(sp)
    80004cd0:	06813823          	sd	s0,112(sp)
    80004cd4:	06913423          	sd	s1,104(sp)
    80004cd8:	07213023          	sd	s2,96(sp)
    80004cdc:	05313c23          	sd	s3,88(sp)
    80004ce0:	05413823          	sd	s4,80(sp)
    80004ce4:	05513423          	sd	s5,72(sp)
    80004ce8:	05613023          	sd	s6,64(sp)
    80004cec:	03713c23          	sd	s7,56(sp)
    80004cf0:	03813823          	sd	s8,48(sp)
    80004cf4:	03913423          	sd	s9,40(sp)
    80004cf8:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004cfc:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004d00:	00005517          	auipc	a0,0x5
    80004d04:	45050513          	addi	a0,a0,1104 # 8000a150 <CONSOLE_STATUS+0x140>
    80004d08:	00001097          	auipc	ra,0x1
    80004d0c:	878080e7          	jalr	-1928(ra) # 80005580 <_Z11printStringPKc>
    getString(input, 30);
    80004d10:	01e00593          	li	a1,30
    80004d14:	f8040493          	addi	s1,s0,-128
    80004d18:	00048513          	mv	a0,s1
    80004d1c:	00001097          	auipc	ra,0x1
    80004d20:	8ec080e7          	jalr	-1812(ra) # 80005608 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004d24:	00048513          	mv	a0,s1
    80004d28:	00001097          	auipc	ra,0x1
    80004d2c:	9b8080e7          	jalr	-1608(ra) # 800056e0 <_Z11stringToIntPKc>
    80004d30:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004d34:	00005517          	auipc	a0,0x5
    80004d38:	43c50513          	addi	a0,a0,1084 # 8000a170 <CONSOLE_STATUS+0x160>
    80004d3c:	00001097          	auipc	ra,0x1
    80004d40:	844080e7          	jalr	-1980(ra) # 80005580 <_Z11printStringPKc>
    getString(input, 30);
    80004d44:	01e00593          	li	a1,30
    80004d48:	00048513          	mv	a0,s1
    80004d4c:	00001097          	auipc	ra,0x1
    80004d50:	8bc080e7          	jalr	-1860(ra) # 80005608 <_Z9getStringPci>
    n = stringToInt(input);
    80004d54:	00048513          	mv	a0,s1
    80004d58:	00001097          	auipc	ra,0x1
    80004d5c:	988080e7          	jalr	-1656(ra) # 800056e0 <_Z11stringToIntPKc>
    80004d60:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004d64:	00005517          	auipc	a0,0x5
    80004d68:	42c50513          	addi	a0,a0,1068 # 8000a190 <CONSOLE_STATUS+0x180>
    80004d6c:	00001097          	auipc	ra,0x1
    80004d70:	814080e7          	jalr	-2028(ra) # 80005580 <_Z11printStringPKc>
    80004d74:	00000613          	li	a2,0
    80004d78:	00a00593          	li	a1,10
    80004d7c:	00090513          	mv	a0,s2
    80004d80:	00001097          	auipc	ra,0x1
    80004d84:	9b0080e7          	jalr	-1616(ra) # 80005730 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004d88:	00005517          	auipc	a0,0x5
    80004d8c:	42050513          	addi	a0,a0,1056 # 8000a1a8 <CONSOLE_STATUS+0x198>
    80004d90:	00000097          	auipc	ra,0x0
    80004d94:	7f0080e7          	jalr	2032(ra) # 80005580 <_Z11printStringPKc>
    80004d98:	00000613          	li	a2,0
    80004d9c:	00a00593          	li	a1,10
    80004da0:	00048513          	mv	a0,s1
    80004da4:	00001097          	auipc	ra,0x1
    80004da8:	98c080e7          	jalr	-1652(ra) # 80005730 <_Z8printIntiii>
    printString(".\n");
    80004dac:	00005517          	auipc	a0,0x5
    80004db0:	41450513          	addi	a0,a0,1044 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80004db4:	00000097          	auipc	ra,0x0
    80004db8:	7cc080e7          	jalr	1996(ra) # 80005580 <_Z11printStringPKc>
    if(threadNum > n) {
    80004dbc:	0324c463          	blt	s1,s2,80004de4 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004dc0:	03205c63          	blez	s2,80004df8 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004dc4:	03800513          	li	a0,56
    80004dc8:	ffffd097          	auipc	ra,0xffffd
    80004dcc:	fbc080e7          	jalr	-68(ra) # 80001d84 <_Znwm>
    80004dd0:	00050a93          	mv	s5,a0
    80004dd4:	00048593          	mv	a1,s1
    80004dd8:	00001097          	auipc	ra,0x1
    80004ddc:	a78080e7          	jalr	-1416(ra) # 80005850 <_ZN9BufferCPPC1Ei>
    80004de0:	0300006f          	j	80004e10 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004de4:	00005517          	auipc	a0,0x5
    80004de8:	3e450513          	addi	a0,a0,996 # 8000a1c8 <CONSOLE_STATUS+0x1b8>
    80004dec:	00000097          	auipc	ra,0x0
    80004df0:	794080e7          	jalr	1940(ra) # 80005580 <_Z11printStringPKc>
        return;
    80004df4:	0140006f          	j	80004e08 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004df8:	00005517          	auipc	a0,0x5
    80004dfc:	41050513          	addi	a0,a0,1040 # 8000a208 <CONSOLE_STATUS+0x1f8>
    80004e00:	00000097          	auipc	ra,0x0
    80004e04:	780080e7          	jalr	1920(ra) # 80005580 <_Z11printStringPKc>
        return;
    80004e08:	000b8113          	mv	sp,s7
    80004e0c:	2380006f          	j	80005044 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004e10:	01000513          	li	a0,16
    80004e14:	ffffd097          	auipc	ra,0xffffd
    80004e18:	f70080e7          	jalr	-144(ra) # 80001d84 <_Znwm>
    80004e1c:	00050493          	mv	s1,a0
    80004e20:	00000593          	li	a1,0
    80004e24:	ffffd097          	auipc	ra,0xffffd
    80004e28:	2a0080e7          	jalr	672(ra) # 800020c4 <_ZN9SemaphoreC1Ej>
    80004e2c:	00008797          	auipc	a5,0x8
    80004e30:	1497b623          	sd	s1,332(a5) # 8000cf78 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004e34:	00391793          	slli	a5,s2,0x3
    80004e38:	00f78793          	addi	a5,a5,15
    80004e3c:	ff07f793          	andi	a5,a5,-16
    80004e40:	40f10133          	sub	sp,sp,a5
    80004e44:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004e48:	0019071b          	addiw	a4,s2,1
    80004e4c:	00171793          	slli	a5,a4,0x1
    80004e50:	00e787b3          	add	a5,a5,a4
    80004e54:	00379793          	slli	a5,a5,0x3
    80004e58:	00f78793          	addi	a5,a5,15
    80004e5c:	ff07f793          	andi	a5,a5,-16
    80004e60:	40f10133          	sub	sp,sp,a5
    80004e64:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004e68:	00191c13          	slli	s8,s2,0x1
    80004e6c:	012c07b3          	add	a5,s8,s2
    80004e70:	00379793          	slli	a5,a5,0x3
    80004e74:	00fa07b3          	add	a5,s4,a5
    80004e78:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004e7c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004e80:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004e84:	02800513          	li	a0,40
    80004e88:	ffffd097          	auipc	ra,0xffffd
    80004e8c:	efc080e7          	jalr	-260(ra) # 80001d84 <_Znwm>
    80004e90:	00050b13          	mv	s6,a0
    80004e94:	012c0c33          	add	s8,s8,s2
    80004e98:	003c1c13          	slli	s8,s8,0x3
    80004e9c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004ea0:	ffffd097          	auipc	ra,0xffffd
    80004ea4:	0fc080e7          	jalr	252(ra) # 80001f9c <_ZN6ThreadC1Ev>
    80004ea8:	00008797          	auipc	a5,0x8
    80004eac:	ed078793          	addi	a5,a5,-304 # 8000cd78 <_ZTV12ConsumerSync+0x10>
    80004eb0:	00fb3023          	sd	a5,0(s6)
    80004eb4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004eb8:	000b0513          	mv	a0,s6
    80004ebc:	ffffd097          	auipc	ra,0xffffd
    80004ec0:	114080e7          	jalr	276(ra) # 80001fd0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004ec4:	00000493          	li	s1,0
    80004ec8:	0380006f          	j	80004f00 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004ecc:	00008797          	auipc	a5,0x8
    80004ed0:	e8478793          	addi	a5,a5,-380 # 8000cd50 <_ZTV12ProducerSync+0x10>
    80004ed4:	00fcb023          	sd	a5,0(s9)
    80004ed8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004edc:	00349793          	slli	a5,s1,0x3
    80004ee0:	00f987b3          	add	a5,s3,a5
    80004ee4:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004ee8:	00349793          	slli	a5,s1,0x3
    80004eec:	00f987b3          	add	a5,s3,a5
    80004ef0:	0007b503          	ld	a0,0(a5)
    80004ef4:	ffffd097          	auipc	ra,0xffffd
    80004ef8:	0dc080e7          	jalr	220(ra) # 80001fd0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004efc:	0014849b          	addiw	s1,s1,1
    80004f00:	0b24d063          	bge	s1,s2,80004fa0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004f04:	00149793          	slli	a5,s1,0x1
    80004f08:	009787b3          	add	a5,a5,s1
    80004f0c:	00379793          	slli	a5,a5,0x3
    80004f10:	00fa07b3          	add	a5,s4,a5
    80004f14:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004f18:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004f1c:	00008717          	auipc	a4,0x8
    80004f20:	05c73703          	ld	a4,92(a4) # 8000cf78 <_ZL10waitForAll>
    80004f24:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004f28:	02905863          	blez	s1,80004f58 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004f2c:	02800513          	li	a0,40
    80004f30:	ffffd097          	auipc	ra,0xffffd
    80004f34:	e54080e7          	jalr	-428(ra) # 80001d84 <_Znwm>
    80004f38:	00050c93          	mv	s9,a0
    80004f3c:	00149c13          	slli	s8,s1,0x1
    80004f40:	009c0c33          	add	s8,s8,s1
    80004f44:	003c1c13          	slli	s8,s8,0x3
    80004f48:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004f4c:	ffffd097          	auipc	ra,0xffffd
    80004f50:	050080e7          	jalr	80(ra) # 80001f9c <_ZN6ThreadC1Ev>
    80004f54:	f79ff06f          	j	80004ecc <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004f58:	02800513          	li	a0,40
    80004f5c:	ffffd097          	auipc	ra,0xffffd
    80004f60:	e28080e7          	jalr	-472(ra) # 80001d84 <_Znwm>
    80004f64:	00050c93          	mv	s9,a0
    80004f68:	00149c13          	slli	s8,s1,0x1
    80004f6c:	009c0c33          	add	s8,s8,s1
    80004f70:	003c1c13          	slli	s8,s8,0x3
    80004f74:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004f78:	ffffd097          	auipc	ra,0xffffd
    80004f7c:	024080e7          	jalr	36(ra) # 80001f9c <_ZN6ThreadC1Ev>
    80004f80:	00008797          	auipc	a5,0x8
    80004f84:	da878793          	addi	a5,a5,-600 # 8000cd28 <_ZTV16ProducerKeyboard+0x10>
    80004f88:	00fcb023          	sd	a5,0(s9)
    80004f8c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004f90:	00349793          	slli	a5,s1,0x3
    80004f94:	00f987b3          	add	a5,s3,a5
    80004f98:	0197b023          	sd	s9,0(a5)
    80004f9c:	f4dff06f          	j	80004ee8 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004fa0:	ffffd097          	auipc	ra,0xffffd
    80004fa4:	0b8080e7          	jalr	184(ra) # 80002058 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004fa8:	00000493          	li	s1,0
    80004fac:	00994e63          	blt	s2,s1,80004fc8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004fb0:	00008517          	auipc	a0,0x8
    80004fb4:	fc853503          	ld	a0,-56(a0) # 8000cf78 <_ZL10waitForAll>
    80004fb8:	ffffd097          	auipc	ra,0xffffd
    80004fbc:	144080e7          	jalr	324(ra) # 800020fc <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004fc0:	0014849b          	addiw	s1,s1,1
    80004fc4:	fe9ff06f          	j	80004fac <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004fc8:	00000493          	li	s1,0
    80004fcc:	0080006f          	j	80004fd4 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004fd0:	0014849b          	addiw	s1,s1,1
    80004fd4:	0324d263          	bge	s1,s2,80004ff8 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004fd8:	00349793          	slli	a5,s1,0x3
    80004fdc:	00f987b3          	add	a5,s3,a5
    80004fe0:	0007b503          	ld	a0,0(a5)
    80004fe4:	fe0506e3          	beqz	a0,80004fd0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004fe8:	00053783          	ld	a5,0(a0)
    80004fec:	0087b783          	ld	a5,8(a5)
    80004ff0:	000780e7          	jalr	a5
    80004ff4:	fddff06f          	j	80004fd0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004ff8:	000b0a63          	beqz	s6,8000500c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004ffc:	000b3783          	ld	a5,0(s6)
    80005000:	0087b783          	ld	a5,8(a5)
    80005004:	000b0513          	mv	a0,s6
    80005008:	000780e7          	jalr	a5
    delete waitForAll;
    8000500c:	00008517          	auipc	a0,0x8
    80005010:	f6c53503          	ld	a0,-148(a0) # 8000cf78 <_ZL10waitForAll>
    80005014:	00050863          	beqz	a0,80005024 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005018:	00053783          	ld	a5,0(a0)
    8000501c:	0087b783          	ld	a5,8(a5)
    80005020:	000780e7          	jalr	a5
    delete buffer;
    80005024:	000a8e63          	beqz	s5,80005040 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005028:	000a8513          	mv	a0,s5
    8000502c:	00001097          	auipc	ra,0x1
    80005030:	b1c080e7          	jalr	-1252(ra) # 80005b48 <_ZN9BufferCPPD1Ev>
    80005034:	000a8513          	mv	a0,s5
    80005038:	ffffd097          	auipc	ra,0xffffd
    8000503c:	d9c080e7          	jalr	-612(ra) # 80001dd4 <_ZdlPv>
    80005040:	000b8113          	mv	sp,s7

}
    80005044:	f8040113          	addi	sp,s0,-128
    80005048:	07813083          	ld	ra,120(sp)
    8000504c:	07013403          	ld	s0,112(sp)
    80005050:	06813483          	ld	s1,104(sp)
    80005054:	06013903          	ld	s2,96(sp)
    80005058:	05813983          	ld	s3,88(sp)
    8000505c:	05013a03          	ld	s4,80(sp)
    80005060:	04813a83          	ld	s5,72(sp)
    80005064:	04013b03          	ld	s6,64(sp)
    80005068:	03813b83          	ld	s7,56(sp)
    8000506c:	03013c03          	ld	s8,48(sp)
    80005070:	02813c83          	ld	s9,40(sp)
    80005074:	08010113          	addi	sp,sp,128
    80005078:	00008067          	ret
    8000507c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005080:	000a8513          	mv	a0,s5
    80005084:	ffffd097          	auipc	ra,0xffffd
    80005088:	d50080e7          	jalr	-688(ra) # 80001dd4 <_ZdlPv>
    8000508c:	00048513          	mv	a0,s1
    80005090:	00009097          	auipc	ra,0x9
    80005094:	fe8080e7          	jalr	-24(ra) # 8000e078 <_Unwind_Resume>
    80005098:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000509c:	00048513          	mv	a0,s1
    800050a0:	ffffd097          	auipc	ra,0xffffd
    800050a4:	d34080e7          	jalr	-716(ra) # 80001dd4 <_ZdlPv>
    800050a8:	00090513          	mv	a0,s2
    800050ac:	00009097          	auipc	ra,0x9
    800050b0:	fcc080e7          	jalr	-52(ra) # 8000e078 <_Unwind_Resume>
    800050b4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800050b8:	000b0513          	mv	a0,s6
    800050bc:	ffffd097          	auipc	ra,0xffffd
    800050c0:	d18080e7          	jalr	-744(ra) # 80001dd4 <_ZdlPv>
    800050c4:	00048513          	mv	a0,s1
    800050c8:	00009097          	auipc	ra,0x9
    800050cc:	fb0080e7          	jalr	-80(ra) # 8000e078 <_Unwind_Resume>
    800050d0:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800050d4:	000c8513          	mv	a0,s9
    800050d8:	ffffd097          	auipc	ra,0xffffd
    800050dc:	cfc080e7          	jalr	-772(ra) # 80001dd4 <_ZdlPv>
    800050e0:	00048513          	mv	a0,s1
    800050e4:	00009097          	auipc	ra,0x9
    800050e8:	f94080e7          	jalr	-108(ra) # 8000e078 <_Unwind_Resume>
    800050ec:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800050f0:	000c8513          	mv	a0,s9
    800050f4:	ffffd097          	auipc	ra,0xffffd
    800050f8:	ce0080e7          	jalr	-800(ra) # 80001dd4 <_ZdlPv>
    800050fc:	00048513          	mv	a0,s1
    80005100:	00009097          	auipc	ra,0x9
    80005104:	f78080e7          	jalr	-136(ra) # 8000e078 <_Unwind_Resume>

0000000080005108 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005108:	ff010113          	addi	sp,sp,-16
    8000510c:	00113423          	sd	ra,8(sp)
    80005110:	00813023          	sd	s0,0(sp)
    80005114:	01010413          	addi	s0,sp,16
    80005118:	00008797          	auipc	a5,0x8
    8000511c:	c6078793          	addi	a5,a5,-928 # 8000cd78 <_ZTV12ConsumerSync+0x10>
    80005120:	00f53023          	sd	a5,0(a0)
    80005124:	ffffd097          	auipc	ra,0xffffd
    80005128:	d3c080e7          	jalr	-708(ra) # 80001e60 <_ZN6ThreadD1Ev>
    8000512c:	00813083          	ld	ra,8(sp)
    80005130:	00013403          	ld	s0,0(sp)
    80005134:	01010113          	addi	sp,sp,16
    80005138:	00008067          	ret

000000008000513c <_ZN12ConsumerSyncD0Ev>:
    8000513c:	fe010113          	addi	sp,sp,-32
    80005140:	00113c23          	sd	ra,24(sp)
    80005144:	00813823          	sd	s0,16(sp)
    80005148:	00913423          	sd	s1,8(sp)
    8000514c:	02010413          	addi	s0,sp,32
    80005150:	00050493          	mv	s1,a0
    80005154:	00008797          	auipc	a5,0x8
    80005158:	c2478793          	addi	a5,a5,-988 # 8000cd78 <_ZTV12ConsumerSync+0x10>
    8000515c:	00f53023          	sd	a5,0(a0)
    80005160:	ffffd097          	auipc	ra,0xffffd
    80005164:	d00080e7          	jalr	-768(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80005168:	00048513          	mv	a0,s1
    8000516c:	ffffd097          	auipc	ra,0xffffd
    80005170:	c68080e7          	jalr	-920(ra) # 80001dd4 <_ZdlPv>
    80005174:	01813083          	ld	ra,24(sp)
    80005178:	01013403          	ld	s0,16(sp)
    8000517c:	00813483          	ld	s1,8(sp)
    80005180:	02010113          	addi	sp,sp,32
    80005184:	00008067          	ret

0000000080005188 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005188:	ff010113          	addi	sp,sp,-16
    8000518c:	00113423          	sd	ra,8(sp)
    80005190:	00813023          	sd	s0,0(sp)
    80005194:	01010413          	addi	s0,sp,16
    80005198:	00008797          	auipc	a5,0x8
    8000519c:	bb878793          	addi	a5,a5,-1096 # 8000cd50 <_ZTV12ProducerSync+0x10>
    800051a0:	00f53023          	sd	a5,0(a0)
    800051a4:	ffffd097          	auipc	ra,0xffffd
    800051a8:	cbc080e7          	jalr	-836(ra) # 80001e60 <_ZN6ThreadD1Ev>
    800051ac:	00813083          	ld	ra,8(sp)
    800051b0:	00013403          	ld	s0,0(sp)
    800051b4:	01010113          	addi	sp,sp,16
    800051b8:	00008067          	ret

00000000800051bc <_ZN12ProducerSyncD0Ev>:
    800051bc:	fe010113          	addi	sp,sp,-32
    800051c0:	00113c23          	sd	ra,24(sp)
    800051c4:	00813823          	sd	s0,16(sp)
    800051c8:	00913423          	sd	s1,8(sp)
    800051cc:	02010413          	addi	s0,sp,32
    800051d0:	00050493          	mv	s1,a0
    800051d4:	00008797          	auipc	a5,0x8
    800051d8:	b7c78793          	addi	a5,a5,-1156 # 8000cd50 <_ZTV12ProducerSync+0x10>
    800051dc:	00f53023          	sd	a5,0(a0)
    800051e0:	ffffd097          	auipc	ra,0xffffd
    800051e4:	c80080e7          	jalr	-896(ra) # 80001e60 <_ZN6ThreadD1Ev>
    800051e8:	00048513          	mv	a0,s1
    800051ec:	ffffd097          	auipc	ra,0xffffd
    800051f0:	be8080e7          	jalr	-1048(ra) # 80001dd4 <_ZdlPv>
    800051f4:	01813083          	ld	ra,24(sp)
    800051f8:	01013403          	ld	s0,16(sp)
    800051fc:	00813483          	ld	s1,8(sp)
    80005200:	02010113          	addi	sp,sp,32
    80005204:	00008067          	ret

0000000080005208 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005208:	ff010113          	addi	sp,sp,-16
    8000520c:	00113423          	sd	ra,8(sp)
    80005210:	00813023          	sd	s0,0(sp)
    80005214:	01010413          	addi	s0,sp,16
    80005218:	00008797          	auipc	a5,0x8
    8000521c:	b1078793          	addi	a5,a5,-1264 # 8000cd28 <_ZTV16ProducerKeyboard+0x10>
    80005220:	00f53023          	sd	a5,0(a0)
    80005224:	ffffd097          	auipc	ra,0xffffd
    80005228:	c3c080e7          	jalr	-964(ra) # 80001e60 <_ZN6ThreadD1Ev>
    8000522c:	00813083          	ld	ra,8(sp)
    80005230:	00013403          	ld	s0,0(sp)
    80005234:	01010113          	addi	sp,sp,16
    80005238:	00008067          	ret

000000008000523c <_ZN16ProducerKeyboardD0Ev>:
    8000523c:	fe010113          	addi	sp,sp,-32
    80005240:	00113c23          	sd	ra,24(sp)
    80005244:	00813823          	sd	s0,16(sp)
    80005248:	00913423          	sd	s1,8(sp)
    8000524c:	02010413          	addi	s0,sp,32
    80005250:	00050493          	mv	s1,a0
    80005254:	00008797          	auipc	a5,0x8
    80005258:	ad478793          	addi	a5,a5,-1324 # 8000cd28 <_ZTV16ProducerKeyboard+0x10>
    8000525c:	00f53023          	sd	a5,0(a0)
    80005260:	ffffd097          	auipc	ra,0xffffd
    80005264:	c00080e7          	jalr	-1024(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80005268:	00048513          	mv	a0,s1
    8000526c:	ffffd097          	auipc	ra,0xffffd
    80005270:	b68080e7          	jalr	-1176(ra) # 80001dd4 <_ZdlPv>
    80005274:	01813083          	ld	ra,24(sp)
    80005278:	01013403          	ld	s0,16(sp)
    8000527c:	00813483          	ld	s1,8(sp)
    80005280:	02010113          	addi	sp,sp,32
    80005284:	00008067          	ret

0000000080005288 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005288:	ff010113          	addi	sp,sp,-16
    8000528c:	00113423          	sd	ra,8(sp)
    80005290:	00813023          	sd	s0,0(sp)
    80005294:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005298:	02053583          	ld	a1,32(a0)
    8000529c:	fffff097          	auipc	ra,0xfffff
    800052a0:	7e4080e7          	jalr	2020(ra) # 80004a80 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800052a4:	00813083          	ld	ra,8(sp)
    800052a8:	00013403          	ld	s0,0(sp)
    800052ac:	01010113          	addi	sp,sp,16
    800052b0:	00008067          	ret

00000000800052b4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800052b4:	ff010113          	addi	sp,sp,-16
    800052b8:	00113423          	sd	ra,8(sp)
    800052bc:	00813023          	sd	s0,0(sp)
    800052c0:	01010413          	addi	s0,sp,16
        producer(td);
    800052c4:	02053583          	ld	a1,32(a0)
    800052c8:	00000097          	auipc	ra,0x0
    800052cc:	878080e7          	jalr	-1928(ra) # 80004b40 <_ZN12ProducerSync8producerEPv>
    }
    800052d0:	00813083          	ld	ra,8(sp)
    800052d4:	00013403          	ld	s0,0(sp)
    800052d8:	01010113          	addi	sp,sp,16
    800052dc:	00008067          	ret

00000000800052e0 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800052e0:	ff010113          	addi	sp,sp,-16
    800052e4:	00113423          	sd	ra,8(sp)
    800052e8:	00813023          	sd	s0,0(sp)
    800052ec:	01010413          	addi	s0,sp,16
        consumer(td);
    800052f0:	02053583          	ld	a1,32(a0)
    800052f4:	00000097          	auipc	ra,0x0
    800052f8:	8e0080e7          	jalr	-1824(ra) # 80004bd4 <_ZN12ConsumerSync8consumerEPv>
    }
    800052fc:	00813083          	ld	ra,8(sp)
    80005300:	00013403          	ld	s0,0(sp)
    80005304:	01010113          	addi	sp,sp,16
    80005308:	00008067          	ret

000000008000530c <_ZL10workerBodyPv>:
static volatile int red = 0;
static volatile int **matrix;

//rad sa matricama

static void workerBody(void* arg) {
    8000530c:	ff010113          	addi	sp,sp,-16
    80005310:	00113423          	sd	ra,8(sp)
    80005314:	00813023          	sd	s0,0(sp)
    80005318:	01010413          	addi	s0,sp,16
    for (int i = 0; i < n; i++) {
    8000531c:	00000693          	li	a3,0
    80005320:	00008797          	auipc	a5,0x8
    80005324:	c607a783          	lw	a5,-928(a5) # 8000cf80 <_ZL1n>
    80005328:	04f6d263          	bge	a3,a5,8000536c <_ZL10workerBodyPv+0x60>
        sum += matrix[red][i];
    8000532c:	00008717          	auipc	a4,0x8
    80005330:	c5470713          	addi	a4,a4,-940 # 8000cf80 <_ZL1n>
    80005334:	00472783          	lw	a5,4(a4)
    80005338:	0007879b          	sext.w	a5,a5
    8000533c:	00873603          	ld	a2,8(a4)
    80005340:	00379793          	slli	a5,a5,0x3
    80005344:	00f607b3          	add	a5,a2,a5
    80005348:	0007b783          	ld	a5,0(a5)
    8000534c:	00269613          	slli	a2,a3,0x2
    80005350:	00c787b3          	add	a5,a5,a2
    80005354:	0007a783          	lw	a5,0(a5)
    80005358:	01072603          	lw	a2,16(a4)
    8000535c:	00c787bb          	addw	a5,a5,a2
    80005360:	00f72823          	sw	a5,16(a4)
    for (int i = 0; i < n; i++) {
    80005364:	0016869b          	addiw	a3,a3,1
    80005368:	fb9ff06f          	j	80005320 <_ZL10workerBodyPv+0x14>
    }
    printString("Thread finished!\n");
    8000536c:	00005517          	auipc	a0,0x5
    80005370:	fd450513          	addi	a0,a0,-44 # 8000a340 <CONSOLE_STATUS+0x330>
    80005374:	00000097          	auipc	ra,0x0
    80005378:	20c080e7          	jalr	524(ra) # 80005580 <_Z11printStringPKc>
    red += 1;
    8000537c:	00008717          	auipc	a4,0x8
    80005380:	c0470713          	addi	a4,a4,-1020 # 8000cf80 <_ZL1n>
    80005384:	00472783          	lw	a5,4(a4)
    80005388:	0017879b          	addiw	a5,a5,1
    8000538c:	00f72223          	sw	a5,4(a4)
}
    80005390:	00813083          	ld	ra,8(sp)
    80005394:	00013403          	ld	s0,0(sp)
    80005398:	01010113          	addi	sp,sp,16
    8000539c:	00008067          	ret

00000000800053a0 <_Z12modifikacijav>:

void modifikacija(){
    800053a0:	fd010113          	addi	sp,sp,-48
    800053a4:	02113423          	sd	ra,40(sp)
    800053a8:	02813023          	sd	s0,32(sp)
    800053ac:	00913c23          	sd	s1,24(sp)
    800053b0:	01213823          	sd	s2,16(sp)
    800053b4:	01313423          	sd	s3,8(sp)
    800053b8:	01413023          	sd	s4,0(sp)
    800053bc:	03010413          	addi	s0,sp,48
    printString("Uneti velicinu matrice!!! \n");
    800053c0:	00005517          	auipc	a0,0x5
    800053c4:	f9850513          	addi	a0,a0,-104 # 8000a358 <CONSOLE_STATUS+0x348>
    800053c8:	00000097          	auipc	ra,0x0
    800053cc:	1b8080e7          	jalr	440(ra) # 80005580 <_Z11printStringPKc>
    n = getc() - '0';
    800053d0:	ffffc097          	auipc	ra,0xffffc
    800053d4:	284080e7          	jalr	644(ra) # 80001654 <_Z4getcv>
    800053d8:	fd05079b          	addiw	a5,a0,-48
    800053dc:	00008497          	auipc	s1,0x8
    800053e0:	ba448493          	addi	s1,s1,-1116 # 8000cf80 <_ZL1n>
    800053e4:	00f4a023          	sw	a5,0(s1)
    getc(); // Enter posle broja
    800053e8:	ffffc097          	auipc	ra,0xffffc
    800053ec:	26c080e7          	jalr	620(ra) # 80001654 <_Z4getcv>

    thread_t threads[n];
    800053f0:	0004a783          	lw	a5,0(s1)
    800053f4:	0007879b          	sext.w	a5,a5
    800053f8:	00379793          	slli	a5,a5,0x3
    800053fc:	00f78793          	addi	a5,a5,15
    80005400:	ff07f793          	andi	a5,a5,-16
    80005404:	40f10133          	sub	sp,sp,a5
    80005408:	00010913          	mv	s2,sp

    matrix = (volatile int**)mem_alloc(n*sizeof(int*));
    8000540c:	0004a503          	lw	a0,0(s1)
    80005410:	0005051b          	sext.w	a0,a0
    80005414:	00351513          	slli	a0,a0,0x3
    80005418:	ffffc097          	auipc	ra,0xffffc
    8000541c:	f74080e7          	jalr	-140(ra) # 8000138c <_Z9mem_allocm>
    80005420:	00a4b423          	sd	a0,8(s1)

    for(int i = 0; i < n; i++){
    80005424:	00000993          	li	s3,0
    80005428:	0080006f          	j	80005430 <_Z12modifikacijav+0x90>
    8000542c:	0019899b          	addiw	s3,s3,1
    80005430:	00008797          	auipc	a5,0x8
    80005434:	b507a783          	lw	a5,-1200(a5) # 8000cf80 <_ZL1n>
    80005438:	06f9d463          	bge	s3,a5,800054a0 <_Z12modifikacijav+0x100>
        matrix[i] = (volatile int*)mem_alloc(n*sizeof (int));
    8000543c:	00008797          	auipc	a5,0x8
    80005440:	b4478793          	addi	a5,a5,-1212 # 8000cf80 <_ZL1n>
    80005444:	0007a503          	lw	a0,0(a5)
    80005448:	0005051b          	sext.w	a0,a0
    8000544c:	00399493          	slli	s1,s3,0x3
    80005450:	0087ba03          	ld	s4,8(a5)
    80005454:	009a0a33          	add	s4,s4,s1
    80005458:	00251513          	slli	a0,a0,0x2
    8000545c:	ffffc097          	auipc	ra,0xffffc
    80005460:	f30080e7          	jalr	-208(ra) # 8000138c <_Z9mem_allocm>
    80005464:	00aa3023          	sd	a0,0(s4)
        for(int j = 0; j < n; j++){
    80005468:	00000793          	li	a5,0
    8000546c:	00008717          	auipc	a4,0x8
    80005470:	b1472703          	lw	a4,-1260(a4) # 8000cf80 <_ZL1n>
    80005474:	fae7dce3          	bge	a5,a4,8000542c <_Z12modifikacijav+0x8c>
            matrix[i][j] = 10;
    80005478:	00008717          	auipc	a4,0x8
    8000547c:	b1073703          	ld	a4,-1264(a4) # 8000cf88 <_ZL6matrix>
    80005480:	00970733          	add	a4,a4,s1
    80005484:	00073703          	ld	a4,0(a4)
    80005488:	00279693          	slli	a3,a5,0x2
    8000548c:	00d70733          	add	a4,a4,a3
    80005490:	00a00693          	li	a3,10
    80005494:	00d72023          	sw	a3,0(a4)
        for(int j = 0; j < n; j++){
    80005498:	0017879b          	addiw	a5,a5,1
    8000549c:	fd1ff06f          	j	8000546c <_Z12modifikacijav+0xcc>
        }
    }

    for(int i = 0; i < n; i++){
    800054a0:	00000493          	li	s1,0
    800054a4:	00008797          	auipc	a5,0x8
    800054a8:	adc7a783          	lw	a5,-1316(a5) # 8000cf80 <_ZL1n>
    800054ac:	04f4de63          	bge	s1,a5,80005508 <_Z12modifikacijav+0x168>
        thread_create(&threads[i], workerBody, nullptr);
    800054b0:	00349513          	slli	a0,s1,0x3
    800054b4:	00000613          	li	a2,0
    800054b8:	00000597          	auipc	a1,0x0
    800054bc:	e5458593          	addi	a1,a1,-428 # 8000530c <_ZL10workerBodyPv>
    800054c0:	00a90533          	add	a0,s2,a0
    800054c4:	ffffc097          	auipc	ra,0xffffc
    800054c8:	f38080e7          	jalr	-200(ra) # 800013fc <_Z13thread_createPP3TCBPFvPvES2_>
        printString("Thread created with number: ");
    800054cc:	00005517          	auipc	a0,0x5
    800054d0:	eac50513          	addi	a0,a0,-340 # 8000a378 <CONSOLE_STATUS+0x368>
    800054d4:	00000097          	auipc	ra,0x0
    800054d8:	0ac080e7          	jalr	172(ra) # 80005580 <_Z11printStringPKc>
        printInt(i+1);
    800054dc:	0014849b          	addiw	s1,s1,1
    800054e0:	00000613          	li	a2,0
    800054e4:	00a00593          	li	a1,10
    800054e8:	00048513          	mv	a0,s1
    800054ec:	00000097          	auipc	ra,0x0
    800054f0:	244080e7          	jalr	580(ra) # 80005730 <_Z8printIntiii>
        printString("\n");
    800054f4:	00005517          	auipc	a0,0x5
    800054f8:	e5c50513          	addi	a0,a0,-420 # 8000a350 <CONSOLE_STATUS+0x340>
    800054fc:	00000097          	auipc	ra,0x0
    80005500:	084080e7          	jalr	132(ra) # 80005580 <_Z11printStringPKc>
    80005504:	fa1ff06f          	j	800054a4 <_Z12modifikacijav+0x104>
    }
    TCB::running->setPing(TCB::running);
    80005508:	00008797          	auipc	a5,0x8
    8000550c:	9707b783          	ld	a5,-1680(a5) # 8000ce78 <_GLOBAL_OFFSET_TABLE_+0x30>
    80005510:	0007b783          	ld	a5,0(a5)
    80005514:	00f03733          	snez	a4,a5
    bool getHasChildren() const { return hasChildren; }
    void setHasChildren(bool value) { hasChildren = value; }
    TCB *getParent() const { return parent;}
    void setParent(TCB *parent) {this->parent = parent; }
    int getThreadId();
    void setPing(bool ping) { this->pinged = ping;}
    80005518:	04e78223          	sb	a4,68(a5)
    thread_dispatch();
    8000551c:	ffffc097          	auipc	ra,0xffffc
    80005520:	f80080e7          	jalr	-128(ra) # 8000149c <_Z15thread_dispatchv>
    printString("Krajnja suma je: ");
    80005524:	00005517          	auipc	a0,0x5
    80005528:	e7450513          	addi	a0,a0,-396 # 8000a398 <CONSOLE_STATUS+0x388>
    8000552c:	00000097          	auipc	ra,0x0
    80005530:	054080e7          	jalr	84(ra) # 80005580 <_Z11printStringPKc>
    printInt(sum);
    80005534:	00000613          	li	a2,0
    80005538:	00a00593          	li	a1,10
    8000553c:	00008517          	auipc	a0,0x8
    80005540:	a5452503          	lw	a0,-1452(a0) # 8000cf90 <_ZL3sum>
    80005544:	00000097          	auipc	ra,0x0
    80005548:	1ec080e7          	jalr	492(ra) # 80005730 <_Z8printIntiii>
    printString("\n");
    8000554c:	00005517          	auipc	a0,0x5
    80005550:	e0450513          	addi	a0,a0,-508 # 8000a350 <CONSOLE_STATUS+0x340>
    80005554:	00000097          	auipc	ra,0x0
    80005558:	02c080e7          	jalr	44(ra) # 80005580 <_Z11printStringPKc>
    8000555c:	fd040113          	addi	sp,s0,-48
    80005560:	02813083          	ld	ra,40(sp)
    80005564:	02013403          	ld	s0,32(sp)
    80005568:	01813483          	ld	s1,24(sp)
    8000556c:	01013903          	ld	s2,16(sp)
    80005570:	00813983          	ld	s3,8(sp)
    80005574:	00013a03          	ld	s4,0(sp)
    80005578:	03010113          	addi	sp,sp,48
    8000557c:	00008067          	ret

0000000080005580 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005580:	fe010113          	addi	sp,sp,-32
    80005584:	00113c23          	sd	ra,24(sp)
    80005588:	00813823          	sd	s0,16(sp)
    8000558c:	00913423          	sd	s1,8(sp)
    80005590:	02010413          	addi	s0,sp,32
    80005594:	00050493          	mv	s1,a0
    LOCK();
    80005598:	00100613          	li	a2,1
    8000559c:	00000593          	li	a1,0
    800055a0:	00008517          	auipc	a0,0x8
    800055a4:	9f850513          	addi	a0,a0,-1544 # 8000cf98 <lockPrint>
    800055a8:	ffffc097          	auipc	ra,0xffffc
    800055ac:	dc4080e7          	jalr	-572(ra) # 8000136c <copy_and_swap>
    800055b0:	00050863          	beqz	a0,800055c0 <_Z11printStringPKc+0x40>
    800055b4:	ffffc097          	auipc	ra,0xffffc
    800055b8:	ee8080e7          	jalr	-280(ra) # 8000149c <_Z15thread_dispatchv>
    800055bc:	fddff06f          	j	80005598 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800055c0:	0004c503          	lbu	a0,0(s1)
    800055c4:	00050a63          	beqz	a0,800055d8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800055c8:	ffffc097          	auipc	ra,0xffffc
    800055cc:	064080e7          	jalr	100(ra) # 8000162c <_Z4putcc>
        string++;
    800055d0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800055d4:	fedff06f          	j	800055c0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800055d8:	00000613          	li	a2,0
    800055dc:	00100593          	li	a1,1
    800055e0:	00008517          	auipc	a0,0x8
    800055e4:	9b850513          	addi	a0,a0,-1608 # 8000cf98 <lockPrint>
    800055e8:	ffffc097          	auipc	ra,0xffffc
    800055ec:	d84080e7          	jalr	-636(ra) # 8000136c <copy_and_swap>
    800055f0:	fe0514e3          	bnez	a0,800055d8 <_Z11printStringPKc+0x58>
}
    800055f4:	01813083          	ld	ra,24(sp)
    800055f8:	01013403          	ld	s0,16(sp)
    800055fc:	00813483          	ld	s1,8(sp)
    80005600:	02010113          	addi	sp,sp,32
    80005604:	00008067          	ret

0000000080005608 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005608:	fd010113          	addi	sp,sp,-48
    8000560c:	02113423          	sd	ra,40(sp)
    80005610:	02813023          	sd	s0,32(sp)
    80005614:	00913c23          	sd	s1,24(sp)
    80005618:	01213823          	sd	s2,16(sp)
    8000561c:	01313423          	sd	s3,8(sp)
    80005620:	01413023          	sd	s4,0(sp)
    80005624:	03010413          	addi	s0,sp,48
    80005628:	00050993          	mv	s3,a0
    8000562c:	00058a13          	mv	s4,a1
    LOCK();
    80005630:	00100613          	li	a2,1
    80005634:	00000593          	li	a1,0
    80005638:	00008517          	auipc	a0,0x8
    8000563c:	96050513          	addi	a0,a0,-1696 # 8000cf98 <lockPrint>
    80005640:	ffffc097          	auipc	ra,0xffffc
    80005644:	d2c080e7          	jalr	-724(ra) # 8000136c <copy_and_swap>
    80005648:	00050863          	beqz	a0,80005658 <_Z9getStringPci+0x50>
    8000564c:	ffffc097          	auipc	ra,0xffffc
    80005650:	e50080e7          	jalr	-432(ra) # 8000149c <_Z15thread_dispatchv>
    80005654:	fddff06f          	j	80005630 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005658:	00000913          	li	s2,0
    8000565c:	00090493          	mv	s1,s2
    80005660:	0019091b          	addiw	s2,s2,1
    80005664:	03495a63          	bge	s2,s4,80005698 <_Z9getStringPci+0x90>
        cc = getc();
    80005668:	ffffc097          	auipc	ra,0xffffc
    8000566c:	fec080e7          	jalr	-20(ra) # 80001654 <_Z4getcv>
        if(cc < 1)
    80005670:	02050463          	beqz	a0,80005698 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005674:	009984b3          	add	s1,s3,s1
    80005678:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000567c:	00a00793          	li	a5,10
    80005680:	00f50a63          	beq	a0,a5,80005694 <_Z9getStringPci+0x8c>
    80005684:	00d00793          	li	a5,13
    80005688:	fcf51ae3          	bne	a0,a5,8000565c <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000568c:	00090493          	mv	s1,s2
    80005690:	0080006f          	j	80005698 <_Z9getStringPci+0x90>
    80005694:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005698:	009984b3          	add	s1,s3,s1
    8000569c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800056a0:	00000613          	li	a2,0
    800056a4:	00100593          	li	a1,1
    800056a8:	00008517          	auipc	a0,0x8
    800056ac:	8f050513          	addi	a0,a0,-1808 # 8000cf98 <lockPrint>
    800056b0:	ffffc097          	auipc	ra,0xffffc
    800056b4:	cbc080e7          	jalr	-836(ra) # 8000136c <copy_and_swap>
    800056b8:	fe0514e3          	bnez	a0,800056a0 <_Z9getStringPci+0x98>
    return buf;
}
    800056bc:	00098513          	mv	a0,s3
    800056c0:	02813083          	ld	ra,40(sp)
    800056c4:	02013403          	ld	s0,32(sp)
    800056c8:	01813483          	ld	s1,24(sp)
    800056cc:	01013903          	ld	s2,16(sp)
    800056d0:	00813983          	ld	s3,8(sp)
    800056d4:	00013a03          	ld	s4,0(sp)
    800056d8:	03010113          	addi	sp,sp,48
    800056dc:	00008067          	ret

00000000800056e0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800056e0:	ff010113          	addi	sp,sp,-16
    800056e4:	00813423          	sd	s0,8(sp)
    800056e8:	01010413          	addi	s0,sp,16
    800056ec:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800056f0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800056f4:	0006c603          	lbu	a2,0(a3)
    800056f8:	fd06071b          	addiw	a4,a2,-48
    800056fc:	0ff77713          	andi	a4,a4,255
    80005700:	00900793          	li	a5,9
    80005704:	02e7e063          	bltu	a5,a4,80005724 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005708:	0025179b          	slliw	a5,a0,0x2
    8000570c:	00a787bb          	addw	a5,a5,a0
    80005710:	0017979b          	slliw	a5,a5,0x1
    80005714:	00168693          	addi	a3,a3,1
    80005718:	00c787bb          	addw	a5,a5,a2
    8000571c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005720:	fd5ff06f          	j	800056f4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005724:	00813403          	ld	s0,8(sp)
    80005728:	01010113          	addi	sp,sp,16
    8000572c:	00008067          	ret

0000000080005730 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005730:	fc010113          	addi	sp,sp,-64
    80005734:	02113c23          	sd	ra,56(sp)
    80005738:	02813823          	sd	s0,48(sp)
    8000573c:	02913423          	sd	s1,40(sp)
    80005740:	03213023          	sd	s2,32(sp)
    80005744:	01313c23          	sd	s3,24(sp)
    80005748:	04010413          	addi	s0,sp,64
    8000574c:	00050493          	mv	s1,a0
    80005750:	00058913          	mv	s2,a1
    80005754:	00060993          	mv	s3,a2
    LOCK();
    80005758:	00100613          	li	a2,1
    8000575c:	00000593          	li	a1,0
    80005760:	00008517          	auipc	a0,0x8
    80005764:	83850513          	addi	a0,a0,-1992 # 8000cf98 <lockPrint>
    80005768:	ffffc097          	auipc	ra,0xffffc
    8000576c:	c04080e7          	jalr	-1020(ra) # 8000136c <copy_and_swap>
    80005770:	00050863          	beqz	a0,80005780 <_Z8printIntiii+0x50>
    80005774:	ffffc097          	auipc	ra,0xffffc
    80005778:	d28080e7          	jalr	-728(ra) # 8000149c <_Z15thread_dispatchv>
    8000577c:	fddff06f          	j	80005758 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005780:	00098463          	beqz	s3,80005788 <_Z8printIntiii+0x58>
    80005784:	0804c463          	bltz	s1,8000580c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005788:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000578c:	00000593          	li	a1,0
    }

    i = 0;
    80005790:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005794:	0009079b          	sext.w	a5,s2
    80005798:	0325773b          	remuw	a4,a0,s2
    8000579c:	00048613          	mv	a2,s1
    800057a0:	0014849b          	addiw	s1,s1,1
    800057a4:	02071693          	slli	a3,a4,0x20
    800057a8:	0206d693          	srli	a3,a3,0x20
    800057ac:	00007717          	auipc	a4,0x7
    800057b0:	5e470713          	addi	a4,a4,1508 # 8000cd90 <digits>
    800057b4:	00d70733          	add	a4,a4,a3
    800057b8:	00074683          	lbu	a3,0(a4)
    800057bc:	fd040713          	addi	a4,s0,-48
    800057c0:	00c70733          	add	a4,a4,a2
    800057c4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800057c8:	0005071b          	sext.w	a4,a0
    800057cc:	0325553b          	divuw	a0,a0,s2
    800057d0:	fcf772e3          	bgeu	a4,a5,80005794 <_Z8printIntiii+0x64>
    if(neg)
    800057d4:	00058c63          	beqz	a1,800057ec <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800057d8:	fd040793          	addi	a5,s0,-48
    800057dc:	009784b3          	add	s1,a5,s1
    800057e0:	02d00793          	li	a5,45
    800057e4:	fef48823          	sb	a5,-16(s1)
    800057e8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800057ec:	fff4849b          	addiw	s1,s1,-1
    800057f0:	0204c463          	bltz	s1,80005818 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800057f4:	fd040793          	addi	a5,s0,-48
    800057f8:	009787b3          	add	a5,a5,s1
    800057fc:	ff07c503          	lbu	a0,-16(a5)
    80005800:	ffffc097          	auipc	ra,0xffffc
    80005804:	e2c080e7          	jalr	-468(ra) # 8000162c <_Z4putcc>
    80005808:	fe5ff06f          	j	800057ec <_Z8printIntiii+0xbc>
        x = -xx;
    8000580c:	4090053b          	negw	a0,s1
        neg = 1;
    80005810:	00100593          	li	a1,1
        x = -xx;
    80005814:	f7dff06f          	j	80005790 <_Z8printIntiii+0x60>

    UNLOCK();
    80005818:	00000613          	li	a2,0
    8000581c:	00100593          	li	a1,1
    80005820:	00007517          	auipc	a0,0x7
    80005824:	77850513          	addi	a0,a0,1912 # 8000cf98 <lockPrint>
    80005828:	ffffc097          	auipc	ra,0xffffc
    8000582c:	b44080e7          	jalr	-1212(ra) # 8000136c <copy_and_swap>
    80005830:	fe0514e3          	bnez	a0,80005818 <_Z8printIntiii+0xe8>
    80005834:	03813083          	ld	ra,56(sp)
    80005838:	03013403          	ld	s0,48(sp)
    8000583c:	02813483          	ld	s1,40(sp)
    80005840:	02013903          	ld	s2,32(sp)
    80005844:	01813983          	ld	s3,24(sp)
    80005848:	04010113          	addi	sp,sp,64
    8000584c:	00008067          	ret

0000000080005850 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005850:	fd010113          	addi	sp,sp,-48
    80005854:	02113423          	sd	ra,40(sp)
    80005858:	02813023          	sd	s0,32(sp)
    8000585c:	00913c23          	sd	s1,24(sp)
    80005860:	01213823          	sd	s2,16(sp)
    80005864:	01313423          	sd	s3,8(sp)
    80005868:	03010413          	addi	s0,sp,48
    8000586c:	00050493          	mv	s1,a0
    80005870:	00058913          	mv	s2,a1
    80005874:	0015879b          	addiw	a5,a1,1
    80005878:	0007851b          	sext.w	a0,a5
    8000587c:	00f4a023          	sw	a5,0(s1)
    80005880:	0004a823          	sw	zero,16(s1)
    80005884:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005888:	00251513          	slli	a0,a0,0x2
    8000588c:	ffffc097          	auipc	ra,0xffffc
    80005890:	b00080e7          	jalr	-1280(ra) # 8000138c <_Z9mem_allocm>
    80005894:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005898:	01000513          	li	a0,16
    8000589c:	ffffc097          	auipc	ra,0xffffc
    800058a0:	4e8080e7          	jalr	1256(ra) # 80001d84 <_Znwm>
    800058a4:	00050993          	mv	s3,a0
    800058a8:	00000593          	li	a1,0
    800058ac:	ffffd097          	auipc	ra,0xffffd
    800058b0:	818080e7          	jalr	-2024(ra) # 800020c4 <_ZN9SemaphoreC1Ej>
    800058b4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800058b8:	01000513          	li	a0,16
    800058bc:	ffffc097          	auipc	ra,0xffffc
    800058c0:	4c8080e7          	jalr	1224(ra) # 80001d84 <_Znwm>
    800058c4:	00050993          	mv	s3,a0
    800058c8:	00090593          	mv	a1,s2
    800058cc:	ffffc097          	auipc	ra,0xffffc
    800058d0:	7f8080e7          	jalr	2040(ra) # 800020c4 <_ZN9SemaphoreC1Ej>
    800058d4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800058d8:	01000513          	li	a0,16
    800058dc:	ffffc097          	auipc	ra,0xffffc
    800058e0:	4a8080e7          	jalr	1192(ra) # 80001d84 <_Znwm>
    800058e4:	00050913          	mv	s2,a0
    800058e8:	00100593          	li	a1,1
    800058ec:	ffffc097          	auipc	ra,0xffffc
    800058f0:	7d8080e7          	jalr	2008(ra) # 800020c4 <_ZN9SemaphoreC1Ej>
    800058f4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800058f8:	01000513          	li	a0,16
    800058fc:	ffffc097          	auipc	ra,0xffffc
    80005900:	488080e7          	jalr	1160(ra) # 80001d84 <_Znwm>
    80005904:	00050913          	mv	s2,a0
    80005908:	00100593          	li	a1,1
    8000590c:	ffffc097          	auipc	ra,0xffffc
    80005910:	7b8080e7          	jalr	1976(ra) # 800020c4 <_ZN9SemaphoreC1Ej>
    80005914:	0324b823          	sd	s2,48(s1)
}
    80005918:	02813083          	ld	ra,40(sp)
    8000591c:	02013403          	ld	s0,32(sp)
    80005920:	01813483          	ld	s1,24(sp)
    80005924:	01013903          	ld	s2,16(sp)
    80005928:	00813983          	ld	s3,8(sp)
    8000592c:	03010113          	addi	sp,sp,48
    80005930:	00008067          	ret
    80005934:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005938:	00098513          	mv	a0,s3
    8000593c:	ffffc097          	auipc	ra,0xffffc
    80005940:	498080e7          	jalr	1176(ra) # 80001dd4 <_ZdlPv>
    80005944:	00048513          	mv	a0,s1
    80005948:	00008097          	auipc	ra,0x8
    8000594c:	730080e7          	jalr	1840(ra) # 8000e078 <_Unwind_Resume>
    80005950:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005954:	00098513          	mv	a0,s3
    80005958:	ffffc097          	auipc	ra,0xffffc
    8000595c:	47c080e7          	jalr	1148(ra) # 80001dd4 <_ZdlPv>
    80005960:	00048513          	mv	a0,s1
    80005964:	00008097          	auipc	ra,0x8
    80005968:	714080e7          	jalr	1812(ra) # 8000e078 <_Unwind_Resume>
    8000596c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005970:	00090513          	mv	a0,s2
    80005974:	ffffc097          	auipc	ra,0xffffc
    80005978:	460080e7          	jalr	1120(ra) # 80001dd4 <_ZdlPv>
    8000597c:	00048513          	mv	a0,s1
    80005980:	00008097          	auipc	ra,0x8
    80005984:	6f8080e7          	jalr	1784(ra) # 8000e078 <_Unwind_Resume>
    80005988:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000598c:	00090513          	mv	a0,s2
    80005990:	ffffc097          	auipc	ra,0xffffc
    80005994:	444080e7          	jalr	1092(ra) # 80001dd4 <_ZdlPv>
    80005998:	00048513          	mv	a0,s1
    8000599c:	00008097          	auipc	ra,0x8
    800059a0:	6dc080e7          	jalr	1756(ra) # 8000e078 <_Unwind_Resume>

00000000800059a4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800059a4:	fe010113          	addi	sp,sp,-32
    800059a8:	00113c23          	sd	ra,24(sp)
    800059ac:	00813823          	sd	s0,16(sp)
    800059b0:	00913423          	sd	s1,8(sp)
    800059b4:	01213023          	sd	s2,0(sp)
    800059b8:	02010413          	addi	s0,sp,32
    800059bc:	00050493          	mv	s1,a0
    800059c0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800059c4:	01853503          	ld	a0,24(a0)
    800059c8:	ffffc097          	auipc	ra,0xffffc
    800059cc:	734080e7          	jalr	1844(ra) # 800020fc <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800059d0:	0304b503          	ld	a0,48(s1)
    800059d4:	ffffc097          	auipc	ra,0xffffc
    800059d8:	728080e7          	jalr	1832(ra) # 800020fc <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800059dc:	0084b783          	ld	a5,8(s1)
    800059e0:	0144a703          	lw	a4,20(s1)
    800059e4:	00271713          	slli	a4,a4,0x2
    800059e8:	00e787b3          	add	a5,a5,a4
    800059ec:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800059f0:	0144a783          	lw	a5,20(s1)
    800059f4:	0017879b          	addiw	a5,a5,1
    800059f8:	0004a703          	lw	a4,0(s1)
    800059fc:	02e7e7bb          	remw	a5,a5,a4
    80005a00:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005a04:	0304b503          	ld	a0,48(s1)
    80005a08:	ffffc097          	auipc	ra,0xffffc
    80005a0c:	72c080e7          	jalr	1836(ra) # 80002134 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005a10:	0204b503          	ld	a0,32(s1)
    80005a14:	ffffc097          	auipc	ra,0xffffc
    80005a18:	720080e7          	jalr	1824(ra) # 80002134 <_ZN9Semaphore6signalEv>

}
    80005a1c:	01813083          	ld	ra,24(sp)
    80005a20:	01013403          	ld	s0,16(sp)
    80005a24:	00813483          	ld	s1,8(sp)
    80005a28:	00013903          	ld	s2,0(sp)
    80005a2c:	02010113          	addi	sp,sp,32
    80005a30:	00008067          	ret

0000000080005a34 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005a34:	fe010113          	addi	sp,sp,-32
    80005a38:	00113c23          	sd	ra,24(sp)
    80005a3c:	00813823          	sd	s0,16(sp)
    80005a40:	00913423          	sd	s1,8(sp)
    80005a44:	01213023          	sd	s2,0(sp)
    80005a48:	02010413          	addi	s0,sp,32
    80005a4c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005a50:	02053503          	ld	a0,32(a0)
    80005a54:	ffffc097          	auipc	ra,0xffffc
    80005a58:	6a8080e7          	jalr	1704(ra) # 800020fc <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005a5c:	0284b503          	ld	a0,40(s1)
    80005a60:	ffffc097          	auipc	ra,0xffffc
    80005a64:	69c080e7          	jalr	1692(ra) # 800020fc <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005a68:	0084b703          	ld	a4,8(s1)
    80005a6c:	0104a783          	lw	a5,16(s1)
    80005a70:	00279693          	slli	a3,a5,0x2
    80005a74:	00d70733          	add	a4,a4,a3
    80005a78:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005a7c:	0017879b          	addiw	a5,a5,1
    80005a80:	0004a703          	lw	a4,0(s1)
    80005a84:	02e7e7bb          	remw	a5,a5,a4
    80005a88:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005a8c:	0284b503          	ld	a0,40(s1)
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	6a4080e7          	jalr	1700(ra) # 80002134 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005a98:	0184b503          	ld	a0,24(s1)
    80005a9c:	ffffc097          	auipc	ra,0xffffc
    80005aa0:	698080e7          	jalr	1688(ra) # 80002134 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005aa4:	00090513          	mv	a0,s2
    80005aa8:	01813083          	ld	ra,24(sp)
    80005aac:	01013403          	ld	s0,16(sp)
    80005ab0:	00813483          	ld	s1,8(sp)
    80005ab4:	00013903          	ld	s2,0(sp)
    80005ab8:	02010113          	addi	sp,sp,32
    80005abc:	00008067          	ret

0000000080005ac0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005ac0:	fe010113          	addi	sp,sp,-32
    80005ac4:	00113c23          	sd	ra,24(sp)
    80005ac8:	00813823          	sd	s0,16(sp)
    80005acc:	00913423          	sd	s1,8(sp)
    80005ad0:	01213023          	sd	s2,0(sp)
    80005ad4:	02010413          	addi	s0,sp,32
    80005ad8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005adc:	02853503          	ld	a0,40(a0)
    80005ae0:	ffffc097          	auipc	ra,0xffffc
    80005ae4:	61c080e7          	jalr	1564(ra) # 800020fc <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005ae8:	0304b503          	ld	a0,48(s1)
    80005aec:	ffffc097          	auipc	ra,0xffffc
    80005af0:	610080e7          	jalr	1552(ra) # 800020fc <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005af4:	0144a783          	lw	a5,20(s1)
    80005af8:	0104a903          	lw	s2,16(s1)
    80005afc:	0327ce63          	blt	a5,s2,80005b38 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005b00:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005b04:	0304b503          	ld	a0,48(s1)
    80005b08:	ffffc097          	auipc	ra,0xffffc
    80005b0c:	62c080e7          	jalr	1580(ra) # 80002134 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005b10:	0284b503          	ld	a0,40(s1)
    80005b14:	ffffc097          	auipc	ra,0xffffc
    80005b18:	620080e7          	jalr	1568(ra) # 80002134 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005b1c:	00090513          	mv	a0,s2
    80005b20:	01813083          	ld	ra,24(sp)
    80005b24:	01013403          	ld	s0,16(sp)
    80005b28:	00813483          	ld	s1,8(sp)
    80005b2c:	00013903          	ld	s2,0(sp)
    80005b30:	02010113          	addi	sp,sp,32
    80005b34:	00008067          	ret
        ret = cap - head + tail;
    80005b38:	0004a703          	lw	a4,0(s1)
    80005b3c:	4127093b          	subw	s2,a4,s2
    80005b40:	00f9093b          	addw	s2,s2,a5
    80005b44:	fc1ff06f          	j	80005b04 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005b48 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005b48:	fe010113          	addi	sp,sp,-32
    80005b4c:	00113c23          	sd	ra,24(sp)
    80005b50:	00813823          	sd	s0,16(sp)
    80005b54:	00913423          	sd	s1,8(sp)
    80005b58:	02010413          	addi	s0,sp,32
    80005b5c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005b60:	00a00513          	li	a0,10
    80005b64:	ffffc097          	auipc	ra,0xffffc
    80005b68:	630080e7          	jalr	1584(ra) # 80002194 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005b6c:	00005517          	auipc	a0,0x5
    80005b70:	84450513          	addi	a0,a0,-1980 # 8000a3b0 <CONSOLE_STATUS+0x3a0>
    80005b74:	00000097          	auipc	ra,0x0
    80005b78:	a0c080e7          	jalr	-1524(ra) # 80005580 <_Z11printStringPKc>
    while (getCnt()) {
    80005b7c:	00048513          	mv	a0,s1
    80005b80:	00000097          	auipc	ra,0x0
    80005b84:	f40080e7          	jalr	-192(ra) # 80005ac0 <_ZN9BufferCPP6getCntEv>
    80005b88:	02050c63          	beqz	a0,80005bc0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005b8c:	0084b783          	ld	a5,8(s1)
    80005b90:	0104a703          	lw	a4,16(s1)
    80005b94:	00271713          	slli	a4,a4,0x2
    80005b98:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005b9c:	0007c503          	lbu	a0,0(a5)
    80005ba0:	ffffc097          	auipc	ra,0xffffc
    80005ba4:	5f4080e7          	jalr	1524(ra) # 80002194 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005ba8:	0104a783          	lw	a5,16(s1)
    80005bac:	0017879b          	addiw	a5,a5,1
    80005bb0:	0004a703          	lw	a4,0(s1)
    80005bb4:	02e7e7bb          	remw	a5,a5,a4
    80005bb8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005bbc:	fc1ff06f          	j	80005b7c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005bc0:	02100513          	li	a0,33
    80005bc4:	ffffc097          	auipc	ra,0xffffc
    80005bc8:	5d0080e7          	jalr	1488(ra) # 80002194 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005bcc:	00a00513          	li	a0,10
    80005bd0:	ffffc097          	auipc	ra,0xffffc
    80005bd4:	5c4080e7          	jalr	1476(ra) # 80002194 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005bd8:	0084b503          	ld	a0,8(s1)
    80005bdc:	ffffb097          	auipc	ra,0xffffb
    80005be0:	7f0080e7          	jalr	2032(ra) # 800013cc <_Z8mem_freePv>
    delete itemAvailable;
    80005be4:	0204b503          	ld	a0,32(s1)
    80005be8:	00050863          	beqz	a0,80005bf8 <_ZN9BufferCPPD1Ev+0xb0>
    80005bec:	00053783          	ld	a5,0(a0)
    80005bf0:	0087b783          	ld	a5,8(a5)
    80005bf4:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005bf8:	0184b503          	ld	a0,24(s1)
    80005bfc:	00050863          	beqz	a0,80005c0c <_ZN9BufferCPPD1Ev+0xc4>
    80005c00:	00053783          	ld	a5,0(a0)
    80005c04:	0087b783          	ld	a5,8(a5)
    80005c08:	000780e7          	jalr	a5
    delete mutexTail;
    80005c0c:	0304b503          	ld	a0,48(s1)
    80005c10:	00050863          	beqz	a0,80005c20 <_ZN9BufferCPPD1Ev+0xd8>
    80005c14:	00053783          	ld	a5,0(a0)
    80005c18:	0087b783          	ld	a5,8(a5)
    80005c1c:	000780e7          	jalr	a5
    delete mutexHead;
    80005c20:	0284b503          	ld	a0,40(s1)
    80005c24:	00050863          	beqz	a0,80005c34 <_ZN9BufferCPPD1Ev+0xec>
    80005c28:	00053783          	ld	a5,0(a0)
    80005c2c:	0087b783          	ld	a5,8(a5)
    80005c30:	000780e7          	jalr	a5
}
    80005c34:	01813083          	ld	ra,24(sp)
    80005c38:	01013403          	ld	s0,16(sp)
    80005c3c:	00813483          	ld	s1,8(sp)
    80005c40:	02010113          	addi	sp,sp,32
    80005c44:	00008067          	ret

0000000080005c48 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005c48:	fe010113          	addi	sp,sp,-32
    80005c4c:	00113c23          	sd	ra,24(sp)
    80005c50:	00813823          	sd	s0,16(sp)
    80005c54:	00913423          	sd	s1,8(sp)
    80005c58:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-9]\n");
    80005c5c:	00004517          	auipc	a0,0x4
    80005c60:	76c50513          	addi	a0,a0,1900 # 8000a3c8 <CONSOLE_STATUS+0x3b8>
    80005c64:	00000097          	auipc	ra,0x0
    80005c68:	91c080e7          	jalr	-1764(ra) # 80005580 <_Z11printStringPKc>
    int test = getc() - '0';
    80005c6c:	ffffc097          	auipc	ra,0xffffc
    80005c70:	9e8080e7          	jalr	-1560(ra) # 80001654 <_Z4getcv>
    80005c74:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005c78:	ffffc097          	auipc	ra,0xffffc
    80005c7c:	9dc080e7          	jalr	-1572(ra) # 80001654 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005c80:	00900793          	li	a5,9
    80005c84:	1497ec63          	bltu	a5,s1,80005ddc <_Z8userMainv+0x194>
    80005c88:	00249493          	slli	s1,s1,0x2
    80005c8c:	00005717          	auipc	a4,0x5
    80005c90:	a0470713          	addi	a4,a4,-1532 # 8000a690 <CONSOLE_STATUS+0x680>
    80005c94:	00e484b3          	add	s1,s1,a4
    80005c98:	0004a783          	lw	a5,0(s1)
    80005c9c:	00e787b3          	add	a5,a5,a4
    80005ca0:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005ca4:	fffff097          	auipc	ra,0xfffff
    80005ca8:	ce0080e7          	jalr	-800(ra) # 80004984 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005cac:	00004517          	auipc	a0,0x4
    80005cb0:	73c50513          	addi	a0,a0,1852 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    80005cb4:	00000097          	auipc	ra,0x0
    80005cb8:	8cc080e7          	jalr	-1844(ra) # 80005580 <_Z11printStringPKc>
            printString("TEST 0(max broj niti)\n");
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005cbc:	01813083          	ld	ra,24(sp)
    80005cc0:	01013403          	ld	s0,16(sp)
    80005cc4:	00813483          	ld	s1,8(sp)
    80005cc8:	02010113          	addi	sp,sp,32
    80005ccc:	00008067          	ret
            Threads_CPP_API_test();
    80005cd0:	ffffe097          	auipc	ra,0xffffe
    80005cd4:	b94080e7          	jalr	-1132(ra) # 80003864 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005cd8:	00004517          	auipc	a0,0x4
    80005cdc:	75050513          	addi	a0,a0,1872 # 8000a428 <CONSOLE_STATUS+0x418>
    80005ce0:	00000097          	auipc	ra,0x0
    80005ce4:	8a0080e7          	jalr	-1888(ra) # 80005580 <_Z11printStringPKc>
            break;
    80005ce8:	fd5ff06f          	j	80005cbc <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005cec:	ffffd097          	auipc	ra,0xffffd
    80005cf0:	3cc080e7          	jalr	972(ra) # 800030b8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005cf4:	00004517          	auipc	a0,0x4
    80005cf8:	77450513          	addi	a0,a0,1908 # 8000a468 <CONSOLE_STATUS+0x458>
    80005cfc:	00000097          	auipc	ra,0x0
    80005d00:	884080e7          	jalr	-1916(ra) # 80005580 <_Z11printStringPKc>
            break;
    80005d04:	fb9ff06f          	j	80005cbc <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005d08:	fffff097          	auipc	ra,0xfffff
    80005d0c:	fc0080e7          	jalr	-64(ra) # 80004cc8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005d10:	00004517          	auipc	a0,0x4
    80005d14:	7a850513          	addi	a0,a0,1960 # 8000a4b8 <CONSOLE_STATUS+0x4a8>
    80005d18:	00000097          	auipc	ra,0x0
    80005d1c:	868080e7          	jalr	-1944(ra) # 80005580 <_Z11printStringPKc>
            break;
    80005d20:	f9dff06f          	j	80005cbc <_Z8userMainv+0x74>
            testSleeping();
    80005d24:	00000097          	auipc	ra,0x0
    80005d28:	170080e7          	jalr	368(ra) # 80005e94 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005d2c:	00004517          	auipc	a0,0x4
    80005d30:	7e450513          	addi	a0,a0,2020 # 8000a510 <CONSOLE_STATUS+0x500>
    80005d34:	00000097          	auipc	ra,0x0
    80005d38:	84c080e7          	jalr	-1972(ra) # 80005580 <_Z11printStringPKc>
            break;
    80005d3c:	f81ff06f          	j	80005cbc <_Z8userMainv+0x74>
            testConsumerProducer();
    80005d40:	ffffe097          	auipc	ra,0xffffe
    80005d44:	fe4080e7          	jalr	-28(ra) # 80003d24 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005d48:	00004517          	auipc	a0,0x4
    80005d4c:	7f850513          	addi	a0,a0,2040 # 8000a540 <CONSOLE_STATUS+0x530>
    80005d50:	00000097          	auipc	ra,0x0
    80005d54:	830080e7          	jalr	-2000(ra) # 80005580 <_Z11printStringPKc>
            break;
    80005d58:	f65ff06f          	j	80005cbc <_Z8userMainv+0x74>
            System_Mode_test();
    80005d5c:	00000097          	auipc	ra,0x0
    80005d60:	6ac080e7          	jalr	1708(ra) # 80006408 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005d64:	00005517          	auipc	a0,0x5
    80005d68:	81c50513          	addi	a0,a0,-2020 # 8000a580 <CONSOLE_STATUS+0x570>
    80005d6c:	00000097          	auipc	ra,0x0
    80005d70:	814080e7          	jalr	-2028(ra) # 80005580 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005d74:	00005517          	auipc	a0,0x5
    80005d78:	82c50513          	addi	a0,a0,-2004 # 8000a5a0 <CONSOLE_STATUS+0x590>
    80005d7c:	00000097          	auipc	ra,0x0
    80005d80:	804080e7          	jalr	-2044(ra) # 80005580 <_Z11printStringPKc>
            break;
    80005d84:	f39ff06f          	j	80005cbc <_Z8userMainv+0x74>
            Threads_ID_API_test();
    80005d88:	00001097          	auipc	ra,0x1
    80005d8c:	0a8080e7          	jalr	168(ra) # 80006e30 <_Z19Threads_ID_API_testv>
            printString("TEST 8(zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005d90:	00005517          	auipc	a0,0x5
    80005d94:	86850513          	addi	a0,a0,-1944 # 8000a5f8 <CONSOLE_STATUS+0x5e8>
    80005d98:	fffff097          	auipc	ra,0xfffff
    80005d9c:	7e8080e7          	jalr	2024(ra) # 80005580 <_Z11printStringPKc>
            break;
    80005da0:	f1dff06f          	j	80005cbc <_Z8userMainv+0x74>
            modifikacija();
    80005da4:	fffff097          	auipc	ra,0xfffff
    80005da8:	5fc080e7          	jalr	1532(ra) # 800053a0 <_Z12modifikacijav>
            printString("TEST 9(modifikacija)\n");
    80005dac:	00005517          	auipc	a0,0x5
    80005db0:	88c50513          	addi	a0,a0,-1908 # 8000a638 <CONSOLE_STATUS+0x628>
    80005db4:	fffff097          	auipc	ra,0xfffff
    80005db8:	7cc080e7          	jalr	1996(ra) # 80005580 <_Z11printStringPKc>
            break;
    80005dbc:	f01ff06f          	j	80005cbc <_Z8userMainv+0x74>
            maxNiti();
    80005dc0:	00001097          	auipc	ra,0x1
    80005dc4:	874080e7          	jalr	-1932(ra) # 80006634 <_Z7maxNitiv>
            printString("TEST 0(max broj niti)\n");
    80005dc8:	00005517          	auipc	a0,0x5
    80005dcc:	88850513          	addi	a0,a0,-1912 # 8000a650 <CONSOLE_STATUS+0x640>
    80005dd0:	fffff097          	auipc	ra,0xfffff
    80005dd4:	7b0080e7          	jalr	1968(ra) # 80005580 <_Z11printStringPKc>
            break;
    80005dd8:	ee5ff06f          	j	80005cbc <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005ddc:	00005517          	auipc	a0,0x5
    80005de0:	88c50513          	addi	a0,a0,-1908 # 8000a668 <CONSOLE_STATUS+0x658>
    80005de4:	fffff097          	auipc	ra,0xfffff
    80005de8:	79c080e7          	jalr	1948(ra) # 80005580 <_Z11printStringPKc>
    80005dec:	ed1ff06f          	j	80005cbc <_Z8userMainv+0x74>

0000000080005df0 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005df0:	fe010113          	addi	sp,sp,-32
    80005df4:	00113c23          	sd	ra,24(sp)
    80005df8:	00813823          	sd	s0,16(sp)
    80005dfc:	00913423          	sd	s1,8(sp)
    80005e00:	01213023          	sd	s2,0(sp)
    80005e04:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005e08:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005e0c:	00600493          	li	s1,6
    while (--i > 0) {
    80005e10:	fff4849b          	addiw	s1,s1,-1
    80005e14:	04905463          	blez	s1,80005e5c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005e18:	00005517          	auipc	a0,0x5
    80005e1c:	8a050513          	addi	a0,a0,-1888 # 8000a6b8 <CONSOLE_STATUS+0x6a8>
    80005e20:	fffff097          	auipc	ra,0xfffff
    80005e24:	760080e7          	jalr	1888(ra) # 80005580 <_Z11printStringPKc>
        printInt(sleep_time);
    80005e28:	00000613          	li	a2,0
    80005e2c:	00a00593          	li	a1,10
    80005e30:	0009051b          	sext.w	a0,s2
    80005e34:	00000097          	auipc	ra,0x0
    80005e38:	8fc080e7          	jalr	-1796(ra) # 80005730 <_Z8printIntiii>
        printString(" !\n");
    80005e3c:	00005517          	auipc	a0,0x5
    80005e40:	88450513          	addi	a0,a0,-1916 # 8000a6c0 <CONSOLE_STATUS+0x6b0>
    80005e44:	fffff097          	auipc	ra,0xfffff
    80005e48:	73c080e7          	jalr	1852(ra) # 80005580 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005e4c:	00090513          	mv	a0,s2
    80005e50:	ffffb097          	auipc	ra,0xffffb
    80005e54:	7b0080e7          	jalr	1968(ra) # 80001600 <_Z10time_sleepm>
    while (--i > 0) {
    80005e58:	fb9ff06f          	j	80005e10 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005e5c:	00a00793          	li	a5,10
    80005e60:	02f95933          	divu	s2,s2,a5
    80005e64:	fff90913          	addi	s2,s2,-1
    80005e68:	00007797          	auipc	a5,0x7
    80005e6c:	13878793          	addi	a5,a5,312 # 8000cfa0 <_ZL8finished>
    80005e70:	01278933          	add	s2,a5,s2
    80005e74:	00100793          	li	a5,1
    80005e78:	00f90023          	sb	a5,0(s2)
}
    80005e7c:	01813083          	ld	ra,24(sp)
    80005e80:	01013403          	ld	s0,16(sp)
    80005e84:	00813483          	ld	s1,8(sp)
    80005e88:	00013903          	ld	s2,0(sp)
    80005e8c:	02010113          	addi	sp,sp,32
    80005e90:	00008067          	ret

0000000080005e94 <_Z12testSleepingv>:

void testSleeping() {
    80005e94:	fc010113          	addi	sp,sp,-64
    80005e98:	02113c23          	sd	ra,56(sp)
    80005e9c:	02813823          	sd	s0,48(sp)
    80005ea0:	02913423          	sd	s1,40(sp)
    80005ea4:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005ea8:	00a00793          	li	a5,10
    80005eac:	fcf43823          	sd	a5,-48(s0)
    80005eb0:	01400793          	li	a5,20
    80005eb4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005eb8:	00000493          	li	s1,0
    80005ebc:	02c0006f          	j	80005ee8 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005ec0:	00349793          	slli	a5,s1,0x3
    80005ec4:	fd040613          	addi	a2,s0,-48
    80005ec8:	00f60633          	add	a2,a2,a5
    80005ecc:	00000597          	auipc	a1,0x0
    80005ed0:	f2458593          	addi	a1,a1,-220 # 80005df0 <_ZL9sleepyRunPv>
    80005ed4:	fc040513          	addi	a0,s0,-64
    80005ed8:	00f50533          	add	a0,a0,a5
    80005edc:	ffffb097          	auipc	ra,0xffffb
    80005ee0:	520080e7          	jalr	1312(ra) # 800013fc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ee4:	0014849b          	addiw	s1,s1,1
    80005ee8:	00100793          	li	a5,1
    80005eec:	fc97dae3          	bge	a5,s1,80005ec0 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005ef0:	00007797          	auipc	a5,0x7
    80005ef4:	0b07c783          	lbu	a5,176(a5) # 8000cfa0 <_ZL8finished>
    80005ef8:	fe078ce3          	beqz	a5,80005ef0 <_Z12testSleepingv+0x5c>
    80005efc:	00007797          	auipc	a5,0x7
    80005f00:	0a57c783          	lbu	a5,165(a5) # 8000cfa1 <_ZL8finished+0x1>
    80005f04:	fe0786e3          	beqz	a5,80005ef0 <_Z12testSleepingv+0x5c>
}
    80005f08:	03813083          	ld	ra,56(sp)
    80005f0c:	03013403          	ld	s0,48(sp)
    80005f10:	02813483          	ld	s1,40(sp)
    80005f14:	04010113          	addi	sp,sp,64
    80005f18:	00008067          	ret

0000000080005f1c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005f1c:	fe010113          	addi	sp,sp,-32
    80005f20:	00113c23          	sd	ra,24(sp)
    80005f24:	00813823          	sd	s0,16(sp)
    80005f28:	00913423          	sd	s1,8(sp)
    80005f2c:	01213023          	sd	s2,0(sp)
    80005f30:	02010413          	addi	s0,sp,32
    80005f34:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005f38:	00100793          	li	a5,1
    80005f3c:	02a7f863          	bgeu	a5,a0,80005f6c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005f40:	00a00793          	li	a5,10
    80005f44:	02f577b3          	remu	a5,a0,a5
    80005f48:	02078e63          	beqz	a5,80005f84 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005f4c:	fff48513          	addi	a0,s1,-1
    80005f50:	00000097          	auipc	ra,0x0
    80005f54:	fcc080e7          	jalr	-52(ra) # 80005f1c <_ZL9fibonaccim>
    80005f58:	00050913          	mv	s2,a0
    80005f5c:	ffe48513          	addi	a0,s1,-2
    80005f60:	00000097          	auipc	ra,0x0
    80005f64:	fbc080e7          	jalr	-68(ra) # 80005f1c <_ZL9fibonaccim>
    80005f68:	00a90533          	add	a0,s2,a0
}
    80005f6c:	01813083          	ld	ra,24(sp)
    80005f70:	01013403          	ld	s0,16(sp)
    80005f74:	00813483          	ld	s1,8(sp)
    80005f78:	00013903          	ld	s2,0(sp)
    80005f7c:	02010113          	addi	sp,sp,32
    80005f80:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005f84:	ffffb097          	auipc	ra,0xffffb
    80005f88:	518080e7          	jalr	1304(ra) # 8000149c <_Z15thread_dispatchv>
    80005f8c:	fc1ff06f          	j	80005f4c <_ZL9fibonaccim+0x30>

0000000080005f90 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005f90:	fe010113          	addi	sp,sp,-32
    80005f94:	00113c23          	sd	ra,24(sp)
    80005f98:	00813823          	sd	s0,16(sp)
    80005f9c:	00913423          	sd	s1,8(sp)
    80005fa0:	01213023          	sd	s2,0(sp)
    80005fa4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005fa8:	00a00493          	li	s1,10
    80005fac:	0400006f          	j	80005fec <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005fb0:	00004517          	auipc	a0,0x4
    80005fb4:	2f850513          	addi	a0,a0,760 # 8000a2a8 <CONSOLE_STATUS+0x298>
    80005fb8:	fffff097          	auipc	ra,0xfffff
    80005fbc:	5c8080e7          	jalr	1480(ra) # 80005580 <_Z11printStringPKc>
    80005fc0:	00000613          	li	a2,0
    80005fc4:	00a00593          	li	a1,10
    80005fc8:	00048513          	mv	a0,s1
    80005fcc:	fffff097          	auipc	ra,0xfffff
    80005fd0:	764080e7          	jalr	1892(ra) # 80005730 <_Z8printIntiii>
    80005fd4:	00004517          	auipc	a0,0x4
    80005fd8:	37c50513          	addi	a0,a0,892 # 8000a350 <CONSOLE_STATUS+0x340>
    80005fdc:	fffff097          	auipc	ra,0xfffff
    80005fe0:	5a4080e7          	jalr	1444(ra) # 80005580 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005fe4:	0014849b          	addiw	s1,s1,1
    80005fe8:	0ff4f493          	andi	s1,s1,255
    80005fec:	00c00793          	li	a5,12
    80005ff0:	fc97f0e3          	bgeu	a5,s1,80005fb0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005ff4:	00004517          	auipc	a0,0x4
    80005ff8:	2bc50513          	addi	a0,a0,700 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80005ffc:	fffff097          	auipc	ra,0xfffff
    80006000:	584080e7          	jalr	1412(ra) # 80005580 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006004:	00500313          	li	t1,5
    thread_dispatch();
    80006008:	ffffb097          	auipc	ra,0xffffb
    8000600c:	494080e7          	jalr	1172(ra) # 8000149c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006010:	01000513          	li	a0,16
    80006014:	00000097          	auipc	ra,0x0
    80006018:	f08080e7          	jalr	-248(ra) # 80005f1c <_ZL9fibonaccim>
    8000601c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006020:	00004517          	auipc	a0,0x4
    80006024:	2a050513          	addi	a0,a0,672 # 8000a2c0 <CONSOLE_STATUS+0x2b0>
    80006028:	fffff097          	auipc	ra,0xfffff
    8000602c:	558080e7          	jalr	1368(ra) # 80005580 <_Z11printStringPKc>
    80006030:	00000613          	li	a2,0
    80006034:	00a00593          	li	a1,10
    80006038:	0009051b          	sext.w	a0,s2
    8000603c:	fffff097          	auipc	ra,0xfffff
    80006040:	6f4080e7          	jalr	1780(ra) # 80005730 <_Z8printIntiii>
    80006044:	00004517          	auipc	a0,0x4
    80006048:	30c50513          	addi	a0,a0,780 # 8000a350 <CONSOLE_STATUS+0x340>
    8000604c:	fffff097          	auipc	ra,0xfffff
    80006050:	534080e7          	jalr	1332(ra) # 80005580 <_Z11printStringPKc>
    80006054:	0400006f          	j	80006094 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006058:	00004517          	auipc	a0,0x4
    8000605c:	25050513          	addi	a0,a0,592 # 8000a2a8 <CONSOLE_STATUS+0x298>
    80006060:	fffff097          	auipc	ra,0xfffff
    80006064:	520080e7          	jalr	1312(ra) # 80005580 <_Z11printStringPKc>
    80006068:	00000613          	li	a2,0
    8000606c:	00a00593          	li	a1,10
    80006070:	00048513          	mv	a0,s1
    80006074:	fffff097          	auipc	ra,0xfffff
    80006078:	6bc080e7          	jalr	1724(ra) # 80005730 <_Z8printIntiii>
    8000607c:	00004517          	auipc	a0,0x4
    80006080:	2d450513          	addi	a0,a0,724 # 8000a350 <CONSOLE_STATUS+0x340>
    80006084:	fffff097          	auipc	ra,0xfffff
    80006088:	4fc080e7          	jalr	1276(ra) # 80005580 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000608c:	0014849b          	addiw	s1,s1,1
    80006090:	0ff4f493          	andi	s1,s1,255
    80006094:	00f00793          	li	a5,15
    80006098:	fc97f0e3          	bgeu	a5,s1,80006058 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000609c:	00004517          	auipc	a0,0x4
    800060a0:	23450513          	addi	a0,a0,564 # 8000a2d0 <CONSOLE_STATUS+0x2c0>
    800060a4:	fffff097          	auipc	ra,0xfffff
    800060a8:	4dc080e7          	jalr	1244(ra) # 80005580 <_Z11printStringPKc>
    finishedD = true;
    800060ac:	00100793          	li	a5,1
    800060b0:	00007717          	auipc	a4,0x7
    800060b4:	eef70923          	sb	a5,-270(a4) # 8000cfa2 <_ZL9finishedD>
    thread_dispatch();
    800060b8:	ffffb097          	auipc	ra,0xffffb
    800060bc:	3e4080e7          	jalr	996(ra) # 8000149c <_Z15thread_dispatchv>
}
    800060c0:	01813083          	ld	ra,24(sp)
    800060c4:	01013403          	ld	s0,16(sp)
    800060c8:	00813483          	ld	s1,8(sp)
    800060cc:	00013903          	ld	s2,0(sp)
    800060d0:	02010113          	addi	sp,sp,32
    800060d4:	00008067          	ret

00000000800060d8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800060d8:	fe010113          	addi	sp,sp,-32
    800060dc:	00113c23          	sd	ra,24(sp)
    800060e0:	00813823          	sd	s0,16(sp)
    800060e4:	00913423          	sd	s1,8(sp)
    800060e8:	01213023          	sd	s2,0(sp)
    800060ec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800060f0:	00000493          	li	s1,0
    800060f4:	0400006f          	j	80006134 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800060f8:	00004517          	auipc	a0,0x4
    800060fc:	17050513          	addi	a0,a0,368 # 8000a268 <CONSOLE_STATUS+0x258>
    80006100:	fffff097          	auipc	ra,0xfffff
    80006104:	480080e7          	jalr	1152(ra) # 80005580 <_Z11printStringPKc>
    80006108:	00000613          	li	a2,0
    8000610c:	00a00593          	li	a1,10
    80006110:	00048513          	mv	a0,s1
    80006114:	fffff097          	auipc	ra,0xfffff
    80006118:	61c080e7          	jalr	1564(ra) # 80005730 <_Z8printIntiii>
    8000611c:	00004517          	auipc	a0,0x4
    80006120:	23450513          	addi	a0,a0,564 # 8000a350 <CONSOLE_STATUS+0x340>
    80006124:	fffff097          	auipc	ra,0xfffff
    80006128:	45c080e7          	jalr	1116(ra) # 80005580 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000612c:	0014849b          	addiw	s1,s1,1
    80006130:	0ff4f493          	andi	s1,s1,255
    80006134:	00200793          	li	a5,2
    80006138:	fc97f0e3          	bgeu	a5,s1,800060f8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000613c:	00004517          	auipc	a0,0x4
    80006140:	13450513          	addi	a0,a0,308 # 8000a270 <CONSOLE_STATUS+0x260>
    80006144:	fffff097          	auipc	ra,0xfffff
    80006148:	43c080e7          	jalr	1084(ra) # 80005580 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000614c:	00700313          	li	t1,7
    thread_dispatch();
    80006150:	ffffb097          	auipc	ra,0xffffb
    80006154:	34c080e7          	jalr	844(ra) # 8000149c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006158:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000615c:	00004517          	auipc	a0,0x4
    80006160:	12450513          	addi	a0,a0,292 # 8000a280 <CONSOLE_STATUS+0x270>
    80006164:	fffff097          	auipc	ra,0xfffff
    80006168:	41c080e7          	jalr	1052(ra) # 80005580 <_Z11printStringPKc>
    8000616c:	00000613          	li	a2,0
    80006170:	00a00593          	li	a1,10
    80006174:	0009051b          	sext.w	a0,s2
    80006178:	fffff097          	auipc	ra,0xfffff
    8000617c:	5b8080e7          	jalr	1464(ra) # 80005730 <_Z8printIntiii>
    80006180:	00004517          	auipc	a0,0x4
    80006184:	1d050513          	addi	a0,a0,464 # 8000a350 <CONSOLE_STATUS+0x340>
    80006188:	fffff097          	auipc	ra,0xfffff
    8000618c:	3f8080e7          	jalr	1016(ra) # 80005580 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006190:	00c00513          	li	a0,12
    80006194:	00000097          	auipc	ra,0x0
    80006198:	d88080e7          	jalr	-632(ra) # 80005f1c <_ZL9fibonaccim>
    8000619c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800061a0:	00004517          	auipc	a0,0x4
    800061a4:	0e850513          	addi	a0,a0,232 # 8000a288 <CONSOLE_STATUS+0x278>
    800061a8:	fffff097          	auipc	ra,0xfffff
    800061ac:	3d8080e7          	jalr	984(ra) # 80005580 <_Z11printStringPKc>
    800061b0:	00000613          	li	a2,0
    800061b4:	00a00593          	li	a1,10
    800061b8:	0009051b          	sext.w	a0,s2
    800061bc:	fffff097          	auipc	ra,0xfffff
    800061c0:	574080e7          	jalr	1396(ra) # 80005730 <_Z8printIntiii>
    800061c4:	00004517          	auipc	a0,0x4
    800061c8:	18c50513          	addi	a0,a0,396 # 8000a350 <CONSOLE_STATUS+0x340>
    800061cc:	fffff097          	auipc	ra,0xfffff
    800061d0:	3b4080e7          	jalr	948(ra) # 80005580 <_Z11printStringPKc>
    800061d4:	0400006f          	j	80006214 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800061d8:	00004517          	auipc	a0,0x4
    800061dc:	09050513          	addi	a0,a0,144 # 8000a268 <CONSOLE_STATUS+0x258>
    800061e0:	fffff097          	auipc	ra,0xfffff
    800061e4:	3a0080e7          	jalr	928(ra) # 80005580 <_Z11printStringPKc>
    800061e8:	00000613          	li	a2,0
    800061ec:	00a00593          	li	a1,10
    800061f0:	00048513          	mv	a0,s1
    800061f4:	fffff097          	auipc	ra,0xfffff
    800061f8:	53c080e7          	jalr	1340(ra) # 80005730 <_Z8printIntiii>
    800061fc:	00004517          	auipc	a0,0x4
    80006200:	15450513          	addi	a0,a0,340 # 8000a350 <CONSOLE_STATUS+0x340>
    80006204:	fffff097          	auipc	ra,0xfffff
    80006208:	37c080e7          	jalr	892(ra) # 80005580 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000620c:	0014849b          	addiw	s1,s1,1
    80006210:	0ff4f493          	andi	s1,s1,255
    80006214:	00500793          	li	a5,5
    80006218:	fc97f0e3          	bgeu	a5,s1,800061d8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000621c:	00004517          	auipc	a0,0x4
    80006220:	02450513          	addi	a0,a0,36 # 8000a240 <CONSOLE_STATUS+0x230>
    80006224:	fffff097          	auipc	ra,0xfffff
    80006228:	35c080e7          	jalr	860(ra) # 80005580 <_Z11printStringPKc>
    finishedC = true;
    8000622c:	00100793          	li	a5,1
    80006230:	00007717          	auipc	a4,0x7
    80006234:	d6f709a3          	sb	a5,-653(a4) # 8000cfa3 <_ZL9finishedC>
    thread_dispatch();
    80006238:	ffffb097          	auipc	ra,0xffffb
    8000623c:	264080e7          	jalr	612(ra) # 8000149c <_Z15thread_dispatchv>
}
    80006240:	01813083          	ld	ra,24(sp)
    80006244:	01013403          	ld	s0,16(sp)
    80006248:	00813483          	ld	s1,8(sp)
    8000624c:	00013903          	ld	s2,0(sp)
    80006250:	02010113          	addi	sp,sp,32
    80006254:	00008067          	ret

0000000080006258 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006258:	fe010113          	addi	sp,sp,-32
    8000625c:	00113c23          	sd	ra,24(sp)
    80006260:	00813823          	sd	s0,16(sp)
    80006264:	00913423          	sd	s1,8(sp)
    80006268:	01213023          	sd	s2,0(sp)
    8000626c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006270:	00000913          	li	s2,0
    80006274:	0400006f          	j	800062b4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006278:	ffffb097          	auipc	ra,0xffffb
    8000627c:	224080e7          	jalr	548(ra) # 8000149c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006280:	00148493          	addi	s1,s1,1
    80006284:	000027b7          	lui	a5,0x2
    80006288:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000628c:	0097ee63          	bltu	a5,s1,800062a8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006290:	00000713          	li	a4,0
    80006294:	000077b7          	lui	a5,0x7
    80006298:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000629c:	fce7eee3          	bltu	a5,a4,80006278 <_ZL11workerBodyBPv+0x20>
    800062a0:	00170713          	addi	a4,a4,1
    800062a4:	ff1ff06f          	j	80006294 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800062a8:	00a00793          	li	a5,10
    800062ac:	04f90663          	beq	s2,a5,800062f8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800062b0:	00190913          	addi	s2,s2,1
    800062b4:	00f00793          	li	a5,15
    800062b8:	0527e463          	bltu	a5,s2,80006300 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800062bc:	00004517          	auipc	a0,0x4
    800062c0:	f9450513          	addi	a0,a0,-108 # 8000a250 <CONSOLE_STATUS+0x240>
    800062c4:	fffff097          	auipc	ra,0xfffff
    800062c8:	2bc080e7          	jalr	700(ra) # 80005580 <_Z11printStringPKc>
    800062cc:	00000613          	li	a2,0
    800062d0:	00a00593          	li	a1,10
    800062d4:	0009051b          	sext.w	a0,s2
    800062d8:	fffff097          	auipc	ra,0xfffff
    800062dc:	458080e7          	jalr	1112(ra) # 80005730 <_Z8printIntiii>
    800062e0:	00004517          	auipc	a0,0x4
    800062e4:	07050513          	addi	a0,a0,112 # 8000a350 <CONSOLE_STATUS+0x340>
    800062e8:	fffff097          	auipc	ra,0xfffff
    800062ec:	298080e7          	jalr	664(ra) # 80005580 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800062f0:	00000493          	li	s1,0
    800062f4:	f91ff06f          	j	80006284 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800062f8:	14102ff3          	csrr	t6,sepc
    800062fc:	fb5ff06f          	j	800062b0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006300:	00004517          	auipc	a0,0x4
    80006304:	f5850513          	addi	a0,a0,-168 # 8000a258 <CONSOLE_STATUS+0x248>
    80006308:	fffff097          	auipc	ra,0xfffff
    8000630c:	278080e7          	jalr	632(ra) # 80005580 <_Z11printStringPKc>
    finishedB = true;
    80006310:	00100793          	li	a5,1
    80006314:	00007717          	auipc	a4,0x7
    80006318:	c8f70823          	sb	a5,-880(a4) # 8000cfa4 <_ZL9finishedB>
    thread_dispatch();
    8000631c:	ffffb097          	auipc	ra,0xffffb
    80006320:	180080e7          	jalr	384(ra) # 8000149c <_Z15thread_dispatchv>
}
    80006324:	01813083          	ld	ra,24(sp)
    80006328:	01013403          	ld	s0,16(sp)
    8000632c:	00813483          	ld	s1,8(sp)
    80006330:	00013903          	ld	s2,0(sp)
    80006334:	02010113          	addi	sp,sp,32
    80006338:	00008067          	ret

000000008000633c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000633c:	fe010113          	addi	sp,sp,-32
    80006340:	00113c23          	sd	ra,24(sp)
    80006344:	00813823          	sd	s0,16(sp)
    80006348:	00913423          	sd	s1,8(sp)
    8000634c:	01213023          	sd	s2,0(sp)
    80006350:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006354:	00000913          	li	s2,0
    80006358:	0380006f          	j	80006390 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000635c:	ffffb097          	auipc	ra,0xffffb
    80006360:	140080e7          	jalr	320(ra) # 8000149c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006364:	00148493          	addi	s1,s1,1
    80006368:	000027b7          	lui	a5,0x2
    8000636c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006370:	0097ee63          	bltu	a5,s1,8000638c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006374:	00000713          	li	a4,0
    80006378:	000077b7          	lui	a5,0x7
    8000637c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006380:	fce7eee3          	bltu	a5,a4,8000635c <_ZL11workerBodyAPv+0x20>
    80006384:	00170713          	addi	a4,a4,1
    80006388:	ff1ff06f          	j	80006378 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000638c:	00190913          	addi	s2,s2,1
    80006390:	00900793          	li	a5,9
    80006394:	0527e063          	bltu	a5,s2,800063d4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006398:	00004517          	auipc	a0,0x4
    8000639c:	ea050513          	addi	a0,a0,-352 # 8000a238 <CONSOLE_STATUS+0x228>
    800063a0:	fffff097          	auipc	ra,0xfffff
    800063a4:	1e0080e7          	jalr	480(ra) # 80005580 <_Z11printStringPKc>
    800063a8:	00000613          	li	a2,0
    800063ac:	00a00593          	li	a1,10
    800063b0:	0009051b          	sext.w	a0,s2
    800063b4:	fffff097          	auipc	ra,0xfffff
    800063b8:	37c080e7          	jalr	892(ra) # 80005730 <_Z8printIntiii>
    800063bc:	00004517          	auipc	a0,0x4
    800063c0:	f9450513          	addi	a0,a0,-108 # 8000a350 <CONSOLE_STATUS+0x340>
    800063c4:	fffff097          	auipc	ra,0xfffff
    800063c8:	1bc080e7          	jalr	444(ra) # 80005580 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800063cc:	00000493          	li	s1,0
    800063d0:	f99ff06f          	j	80006368 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800063d4:	00004517          	auipc	a0,0x4
    800063d8:	e6c50513          	addi	a0,a0,-404 # 8000a240 <CONSOLE_STATUS+0x230>
    800063dc:	fffff097          	auipc	ra,0xfffff
    800063e0:	1a4080e7          	jalr	420(ra) # 80005580 <_Z11printStringPKc>
    finishedA = true;
    800063e4:	00100793          	li	a5,1
    800063e8:	00007717          	auipc	a4,0x7
    800063ec:	baf70ea3          	sb	a5,-1091(a4) # 8000cfa5 <_ZL9finishedA>
}
    800063f0:	01813083          	ld	ra,24(sp)
    800063f4:	01013403          	ld	s0,16(sp)
    800063f8:	00813483          	ld	s1,8(sp)
    800063fc:	00013903          	ld	s2,0(sp)
    80006400:	02010113          	addi	sp,sp,32
    80006404:	00008067          	ret

0000000080006408 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006408:	fd010113          	addi	sp,sp,-48
    8000640c:	02113423          	sd	ra,40(sp)
    80006410:	02813023          	sd	s0,32(sp)
    80006414:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006418:	00000613          	li	a2,0
    8000641c:	00000597          	auipc	a1,0x0
    80006420:	f2058593          	addi	a1,a1,-224 # 8000633c <_ZL11workerBodyAPv>
    80006424:	fd040513          	addi	a0,s0,-48
    80006428:	ffffb097          	auipc	ra,0xffffb
    8000642c:	fd4080e7          	jalr	-44(ra) # 800013fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006430:	00004517          	auipc	a0,0x4
    80006434:	eb050513          	addi	a0,a0,-336 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80006438:	fffff097          	auipc	ra,0xfffff
    8000643c:	148080e7          	jalr	328(ra) # 80005580 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006440:	00000613          	li	a2,0
    80006444:	00000597          	auipc	a1,0x0
    80006448:	e1458593          	addi	a1,a1,-492 # 80006258 <_ZL11workerBodyBPv>
    8000644c:	fd840513          	addi	a0,s0,-40
    80006450:	ffffb097          	auipc	ra,0xffffb
    80006454:	fac080e7          	jalr	-84(ra) # 800013fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006458:	00004517          	auipc	a0,0x4
    8000645c:	ea050513          	addi	a0,a0,-352 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80006460:	fffff097          	auipc	ra,0xfffff
    80006464:	120080e7          	jalr	288(ra) # 80005580 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006468:	00000613          	li	a2,0
    8000646c:	00000597          	auipc	a1,0x0
    80006470:	c6c58593          	addi	a1,a1,-916 # 800060d8 <_ZL11workerBodyCPv>
    80006474:	fe040513          	addi	a0,s0,-32
    80006478:	ffffb097          	auipc	ra,0xffffb
    8000647c:	f84080e7          	jalr	-124(ra) # 800013fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006480:	00004517          	auipc	a0,0x4
    80006484:	e9050513          	addi	a0,a0,-368 # 8000a310 <CONSOLE_STATUS+0x300>
    80006488:	fffff097          	auipc	ra,0xfffff
    8000648c:	0f8080e7          	jalr	248(ra) # 80005580 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006490:	00000613          	li	a2,0
    80006494:	00000597          	auipc	a1,0x0
    80006498:	afc58593          	addi	a1,a1,-1284 # 80005f90 <_ZL11workerBodyDPv>
    8000649c:	fe840513          	addi	a0,s0,-24
    800064a0:	ffffb097          	auipc	ra,0xffffb
    800064a4:	f5c080e7          	jalr	-164(ra) # 800013fc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800064a8:	00004517          	auipc	a0,0x4
    800064ac:	e8050513          	addi	a0,a0,-384 # 8000a328 <CONSOLE_STATUS+0x318>
    800064b0:	fffff097          	auipc	ra,0xfffff
    800064b4:	0d0080e7          	jalr	208(ra) # 80005580 <_Z11printStringPKc>
    800064b8:	00c0006f          	j	800064c4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800064bc:	ffffb097          	auipc	ra,0xffffb
    800064c0:	fe0080e7          	jalr	-32(ra) # 8000149c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800064c4:	00007797          	auipc	a5,0x7
    800064c8:	ae17c783          	lbu	a5,-1311(a5) # 8000cfa5 <_ZL9finishedA>
    800064cc:	fe0788e3          	beqz	a5,800064bc <_Z16System_Mode_testv+0xb4>
    800064d0:	00007797          	auipc	a5,0x7
    800064d4:	ad47c783          	lbu	a5,-1324(a5) # 8000cfa4 <_ZL9finishedB>
    800064d8:	fe0782e3          	beqz	a5,800064bc <_Z16System_Mode_testv+0xb4>
    800064dc:	00007797          	auipc	a5,0x7
    800064e0:	ac77c783          	lbu	a5,-1337(a5) # 8000cfa3 <_ZL9finishedC>
    800064e4:	fc078ce3          	beqz	a5,800064bc <_Z16System_Mode_testv+0xb4>
    800064e8:	00007797          	auipc	a5,0x7
    800064ec:	aba7c783          	lbu	a5,-1350(a5) # 8000cfa2 <_ZL9finishedD>
    800064f0:	fc0786e3          	beqz	a5,800064bc <_Z16System_Mode_testv+0xb4>
    }

}
    800064f4:	02813083          	ld	ra,40(sp)
    800064f8:	02013403          	ld	s0,32(sp)
    800064fc:	03010113          	addi	sp,sp,48
    80006500:	00008067          	ret

0000000080006504 <_ZN6Worker10workerBodyEPv>:
    void run() override {
        workerBody(nullptr);
    }
};

void Worker::workerBody(void* arg) {
    80006504:	fd010113          	addi	sp,sp,-48
    80006508:	02113423          	sd	ra,40(sp)
    8000650c:	02813023          	sd	s0,32(sp)
    80006510:	00913c23          	sd	s1,24(sp)
    80006514:	01213823          	sd	s2,16(sp)
    80006518:	01313423          	sd	s3,8(sp)
    8000651c:	03010413          	addi	s0,sp,48
    int id = Thread::getThreadId();
    80006520:	ffffc097          	auipc	ra,0xffffc
    80006524:	ae4080e7          	jalr	-1308(ra) # 80002004 <_ZN6Thread11getThreadIdEv>
    80006528:	00050993          	mv	s3,a0
    for (uint64 i = 0; i < 5; i++) {
    8000652c:	00000913          	li	s2,0
    80006530:	0380006f          	j	80006568 <_ZN6Worker10workerBodyEPv+0x64>
        printString("Hello! ThreadId::");
        printInt(id);
        printString(" num: ");
        printInt(i + 1);
        printString("\n");
        for (uint64 j = 0; j < 5000; j++) {
    80006534:	00148493          	addi	s1,s1,1
    80006538:	000017b7          	lui	a5,0x1
    8000653c:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80006540:	0297e263          	bltu	a5,s1,80006564 <_ZN6Worker10workerBodyEPv+0x60>
            Thread::dispatch();
    80006544:	ffffc097          	auipc	ra,0xffffc
    80006548:	b14080e7          	jalr	-1260(ra) # 80002058 <_ZN6Thread8dispatchEv>
            for (uint64 k = 0; k < 10000; k++);
    8000654c:	00000713          	li	a4,0
    80006550:	000027b7          	lui	a5,0x2
    80006554:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006558:	fce7eee3          	bltu	a5,a4,80006534 <_ZN6Worker10workerBodyEPv+0x30>
    8000655c:	00170713          	addi	a4,a4,1
    80006560:	ff1ff06f          	j	80006550 <_ZN6Worker10workerBodyEPv+0x4c>
    for (uint64 i = 0; i < 5; i++) {
    80006564:	00190913          	addi	s2,s2,1
    80006568:	00400793          	li	a5,4
    8000656c:	0727e263          	bltu	a5,s2,800065d0 <_ZN6Worker10workerBodyEPv+0xcc>
        printString("Hello! ThreadId::");
    80006570:	00004517          	auipc	a0,0x4
    80006574:	15850513          	addi	a0,a0,344 # 8000a6c8 <CONSOLE_STATUS+0x6b8>
    80006578:	fffff097          	auipc	ra,0xfffff
    8000657c:	008080e7          	jalr	8(ra) # 80005580 <_Z11printStringPKc>
        printInt(id);
    80006580:	00000613          	li	a2,0
    80006584:	00a00593          	li	a1,10
    80006588:	00098513          	mv	a0,s3
    8000658c:	fffff097          	auipc	ra,0xfffff
    80006590:	1a4080e7          	jalr	420(ra) # 80005730 <_Z8printIntiii>
        printString(" num: ");
    80006594:	00004517          	auipc	a0,0x4
    80006598:	14c50513          	addi	a0,a0,332 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    8000659c:	fffff097          	auipc	ra,0xfffff
    800065a0:	fe4080e7          	jalr	-28(ra) # 80005580 <_Z11printStringPKc>
        printInt(i + 1);
    800065a4:	00000613          	li	a2,0
    800065a8:	00a00593          	li	a1,10
    800065ac:	0019051b          	addiw	a0,s2,1
    800065b0:	fffff097          	auipc	ra,0xfffff
    800065b4:	180080e7          	jalr	384(ra) # 80005730 <_Z8printIntiii>
        printString("\n");
    800065b8:	00004517          	auipc	a0,0x4
    800065bc:	d9850513          	addi	a0,a0,-616 # 8000a350 <CONSOLE_STATUS+0x340>
    800065c0:	fffff097          	auipc	ra,0xfffff
    800065c4:	fc0080e7          	jalr	-64(ra) # 80005580 <_Z11printStringPKc>
        for (uint64 j = 0; j < 5000; j++) {
    800065c8:	00000493          	li	s1,0
    800065cc:	f6dff06f          	j	80006538 <_ZN6Worker10workerBodyEPv+0x34>
//            { /* busy wait */ }
        }
    }
    printString("Thread finished with id: ");
    800065d0:	00004517          	auipc	a0,0x4
    800065d4:	11850513          	addi	a0,a0,280 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    800065d8:	fffff097          	auipc	ra,0xfffff
    800065dc:	fa8080e7          	jalr	-88(ra) # 80005580 <_Z11printStringPKc>
    printInt(id);
    800065e0:	00000613          	li	a2,0
    800065e4:	00a00593          	li	a1,10
    800065e8:	00098513          	mv	a0,s3
    800065ec:	fffff097          	auipc	ra,0xfffff
    800065f0:	144080e7          	jalr	324(ra) # 80005730 <_Z8printIntiii>
    printString("\n");
    800065f4:	00004517          	auipc	a0,0x4
    800065f8:	d5c50513          	addi	a0,a0,-676 # 8000a350 <CONSOLE_STATUS+0x340>
    800065fc:	fffff097          	auipc	ra,0xfffff
    80006600:	f84080e7          	jalr	-124(ra) # 80005580 <_Z11printStringPKc>
    finished++;
    80006604:	00007717          	auipc	a4,0x7
    80006608:	9a470713          	addi	a4,a4,-1628 # 8000cfa8 <_ZL8finished>
    8000660c:	00072783          	lw	a5,0(a4)
    80006610:	0017879b          	addiw	a5,a5,1
    80006614:	00f72023          	sw	a5,0(a4)
}
    80006618:	02813083          	ld	ra,40(sp)
    8000661c:	02013403          	ld	s0,32(sp)
    80006620:	01813483          	ld	s1,24(sp)
    80006624:	01013903          	ld	s2,16(sp)
    80006628:	00813983          	ld	s3,8(sp)
    8000662c:	03010113          	addi	sp,sp,48
    80006630:	00008067          	ret

0000000080006634 <_Z7maxNitiv>:

void maxNiti(){
    80006634:	f4010113          	addi	sp,sp,-192
    80006638:	0a113c23          	sd	ra,184(sp)
    8000663c:	0a813823          	sd	s0,176(sp)
    80006640:	0a913423          	sd	s1,168(sp)
    80006644:	0b213023          	sd	s2,160(sp)
    80006648:	0c010413          	addi	s0,sp,192

    Thread::setMaxThreadsT(3);
    8000664c:	00300513          	li	a0,3
    80006650:	ffffc097          	auipc	ra,0xffffc
    80006654:	a4c080e7          	jalr	-1460(ra) # 8000209c <_ZN6Thread14setMaxThreadsTEi>
//
//    thread_join(threads[19]);

    Thread* threads[20];

    for(int i=0; i<20; i++) {
    80006658:	00000913          	li	s2,0
    8000665c:	0240006f          	j	80006680 <_Z7maxNitiv+0x4c>
    Worker():Thread() {}
    80006660:	00006797          	auipc	a5,0x6
    80006664:	75878793          	addi	a5,a5,1880 # 8000cdb8 <_ZTV6Worker+0x10>
    80006668:	00f4b023          	sd	a5,0(s1)
        threads[i] = new Worker();
    8000666c:	00391793          	slli	a5,s2,0x3
    80006670:	fe040713          	addi	a4,s0,-32
    80006674:	00f707b3          	add	a5,a4,a5
    80006678:	f697b023          	sd	s1,-160(a5)
    for(int i=0; i<20; i++) {
    8000667c:	0019091b          	addiw	s2,s2,1
    80006680:	01300793          	li	a5,19
    80006684:	0327c063          	blt	a5,s2,800066a4 <_Z7maxNitiv+0x70>
        threads[i] = new Worker();
    80006688:	02000513          	li	a0,32
    8000668c:	ffffb097          	auipc	ra,0xffffb
    80006690:	6f8080e7          	jalr	1784(ra) # 80001d84 <_Znwm>
    80006694:	00050493          	mv	s1,a0
    Worker():Thread() {}
    80006698:	ffffc097          	auipc	ra,0xffffc
    8000669c:	904080e7          	jalr	-1788(ra) # 80001f9c <_ZN6ThreadC1Ev>
    800066a0:	fc1ff06f          	j	80006660 <_Z7maxNitiv+0x2c>
    }

    for(int i=0; i<20; i++) {
    800066a4:	00000493          	li	s1,0
    800066a8:	0540006f          	j	800066fc <_Z7maxNitiv+0xc8>
        threads[i]->start();
    800066ac:	00349793          	slli	a5,s1,0x3
    800066b0:	fe040713          	addi	a4,s0,-32
    800066b4:	00f707b3          	add	a5,a4,a5
    800066b8:	f607b503          	ld	a0,-160(a5)
    800066bc:	ffffc097          	auipc	ra,0xffffc
    800066c0:	914080e7          	jalr	-1772(ra) # 80001fd0 <_ZN6Thread5startEv>
        printString("Thread created with id: ");
    800066c4:	00004517          	auipc	a0,0x4
    800066c8:	04450513          	addi	a0,a0,68 # 8000a708 <CONSOLE_STATUS+0x6f8>
    800066cc:	fffff097          	auipc	ra,0xfffff
    800066d0:	eb4080e7          	jalr	-332(ra) # 80005580 <_Z11printStringPKc>
        printInt(i + 2);
    800066d4:	00000613          	li	a2,0
    800066d8:	00a00593          	li	a1,10
    800066dc:	0024851b          	addiw	a0,s1,2
    800066e0:	fffff097          	auipc	ra,0xfffff
    800066e4:	050080e7          	jalr	80(ra) # 80005730 <_Z8printIntiii>
        printString("\n");
    800066e8:	00004517          	auipc	a0,0x4
    800066ec:	c6850513          	addi	a0,a0,-920 # 8000a350 <CONSOLE_STATUS+0x340>
    800066f0:	fffff097          	auipc	ra,0xfffff
    800066f4:	e90080e7          	jalr	-368(ra) # 80005580 <_Z11printStringPKc>
    for(int i=0; i<20; i++) {
    800066f8:	0014849b          	addiw	s1,s1,1
    800066fc:	01300793          	li	a5,19
    80006700:	fa97d6e3          	bge	a5,s1,800066ac <_Z7maxNitiv+0x78>
    }

    threads[19]->join();
    80006704:	fd843503          	ld	a0,-40(s0)
    80006708:	ffffc097          	auipc	ra,0xffffc
    8000670c:	924080e7          	jalr	-1756(ra) # 8000202c <_ZN6Thread4joinEv>

    for (auto thread: threads) { delete thread; }
    80006710:	f4040493          	addi	s1,s0,-192
    80006714:	0080006f          	j	8000671c <_Z7maxNitiv+0xe8>
    80006718:	00848493          	addi	s1,s1,8
    8000671c:	fe040793          	addi	a5,s0,-32
    80006720:	02f48c63          	beq	s1,a5,80006758 <_Z7maxNitiv+0x124>
    80006724:	0004b503          	ld	a0,0(s1)
    80006728:	fe0508e3          	beqz	a0,80006718 <_Z7maxNitiv+0xe4>
    8000672c:	00053783          	ld	a5,0(a0)
    80006730:	0087b783          	ld	a5,8(a5)
    80006734:	000780e7          	jalr	a5
    80006738:	fe1ff06f          	j	80006718 <_Z7maxNitiv+0xe4>
    8000673c:	00050913          	mv	s2,a0
        threads[i] = new Worker();
    80006740:	00048513          	mv	a0,s1
    80006744:	ffffb097          	auipc	ra,0xffffb
    80006748:	690080e7          	jalr	1680(ra) # 80001dd4 <_ZdlPv>
    8000674c:	00090513          	mv	a0,s2
    80006750:	00008097          	auipc	ra,0x8
    80006754:	928080e7          	jalr	-1752(ra) # 8000e078 <_Unwind_Resume>

    80006758:	0b813083          	ld	ra,184(sp)
    8000675c:	0b013403          	ld	s0,176(sp)
    80006760:	0a813483          	ld	s1,168(sp)
    80006764:	0a013903          	ld	s2,160(sp)
    80006768:	0c010113          	addi	sp,sp,192
    8000676c:	00008067          	ret

0000000080006770 <_ZN6WorkerD1Ev>:
class Worker: public Thread {
    80006770:	ff010113          	addi	sp,sp,-16
    80006774:	00113423          	sd	ra,8(sp)
    80006778:	00813023          	sd	s0,0(sp)
    8000677c:	01010413          	addi	s0,sp,16
    80006780:	00006797          	auipc	a5,0x6
    80006784:	63878793          	addi	a5,a5,1592 # 8000cdb8 <_ZTV6Worker+0x10>
    80006788:	00f53023          	sd	a5,0(a0)
    8000678c:	ffffb097          	auipc	ra,0xffffb
    80006790:	6d4080e7          	jalr	1748(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80006794:	00813083          	ld	ra,8(sp)
    80006798:	00013403          	ld	s0,0(sp)
    8000679c:	01010113          	addi	sp,sp,16
    800067a0:	00008067          	ret

00000000800067a4 <_ZN6WorkerD0Ev>:
    800067a4:	fe010113          	addi	sp,sp,-32
    800067a8:	00113c23          	sd	ra,24(sp)
    800067ac:	00813823          	sd	s0,16(sp)
    800067b0:	00913423          	sd	s1,8(sp)
    800067b4:	02010413          	addi	s0,sp,32
    800067b8:	00050493          	mv	s1,a0
    800067bc:	00006797          	auipc	a5,0x6
    800067c0:	5fc78793          	addi	a5,a5,1532 # 8000cdb8 <_ZTV6Worker+0x10>
    800067c4:	00f53023          	sd	a5,0(a0)
    800067c8:	ffffb097          	auipc	ra,0xffffb
    800067cc:	698080e7          	jalr	1688(ra) # 80001e60 <_ZN6ThreadD1Ev>
    800067d0:	00048513          	mv	a0,s1
    800067d4:	ffffb097          	auipc	ra,0xffffb
    800067d8:	600080e7          	jalr	1536(ra) # 80001dd4 <_ZdlPv>
    800067dc:	01813083          	ld	ra,24(sp)
    800067e0:	01013403          	ld	s0,16(sp)
    800067e4:	00813483          	ld	s1,8(sp)
    800067e8:	02010113          	addi	sp,sp,32
    800067ec:	00008067          	ret

00000000800067f0 <_ZN6Worker3runEv>:
    void run() override {
    800067f0:	ff010113          	addi	sp,sp,-16
    800067f4:	00113423          	sd	ra,8(sp)
    800067f8:	00813023          	sd	s0,0(sp)
    800067fc:	01010413          	addi	s0,sp,16
        workerBody(nullptr);
    80006800:	00000593          	li	a1,0
    80006804:	00000097          	auipc	ra,0x0
    80006808:	d00080e7          	jalr	-768(ra) # 80006504 <_ZN6Worker10workerBodyEPv>
    }
    8000680c:	00813083          	ld	ra,8(sp)
    80006810:	00013403          	ld	s0,0(sp)
    80006814:	01010113          	addi	sp,sp,16
    80006818:	00008067          	ret

000000008000681c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000681c:	fe010113          	addi	sp,sp,-32
    80006820:	00113c23          	sd	ra,24(sp)
    80006824:	00813823          	sd	s0,16(sp)
    80006828:	00913423          	sd	s1,8(sp)
    8000682c:	01213023          	sd	s2,0(sp)
    80006830:	02010413          	addi	s0,sp,32
    80006834:	00050493          	mv	s1,a0
    80006838:	00058913          	mv	s2,a1
    8000683c:	0015879b          	addiw	a5,a1,1
    80006840:	0007851b          	sext.w	a0,a5
    80006844:	00f4a023          	sw	a5,0(s1)
    80006848:	0004a823          	sw	zero,16(s1)
    8000684c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006850:	00251513          	slli	a0,a0,0x2
    80006854:	ffffb097          	auipc	ra,0xffffb
    80006858:	b38080e7          	jalr	-1224(ra) # 8000138c <_Z9mem_allocm>
    8000685c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006860:	00000593          	li	a1,0
    80006864:	02048513          	addi	a0,s1,32
    80006868:	ffffb097          	auipc	ra,0xffffb
    8000686c:	cd4080e7          	jalr	-812(ra) # 8000153c <_Z8sem_openPP3SEMj>
    sem_open(&spaceAvailable, _cap);
    80006870:	00090593          	mv	a1,s2
    80006874:	01848513          	addi	a0,s1,24
    80006878:	ffffb097          	auipc	ra,0xffffb
    8000687c:	cc4080e7          	jalr	-828(ra) # 8000153c <_Z8sem_openPP3SEMj>
    sem_open(&mutexHead, 1);
    80006880:	00100593          	li	a1,1
    80006884:	02848513          	addi	a0,s1,40
    80006888:	ffffb097          	auipc	ra,0xffffb
    8000688c:	cb4080e7          	jalr	-844(ra) # 8000153c <_Z8sem_openPP3SEMj>
    sem_open(&mutexTail, 1);
    80006890:	00100593          	li	a1,1
    80006894:	03048513          	addi	a0,s1,48
    80006898:	ffffb097          	auipc	ra,0xffffb
    8000689c:	ca4080e7          	jalr	-860(ra) # 8000153c <_Z8sem_openPP3SEMj>
}
    800068a0:	01813083          	ld	ra,24(sp)
    800068a4:	01013403          	ld	s0,16(sp)
    800068a8:	00813483          	ld	s1,8(sp)
    800068ac:	00013903          	ld	s2,0(sp)
    800068b0:	02010113          	addi	sp,sp,32
    800068b4:	00008067          	ret

00000000800068b8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800068b8:	fe010113          	addi	sp,sp,-32
    800068bc:	00113c23          	sd	ra,24(sp)
    800068c0:	00813823          	sd	s0,16(sp)
    800068c4:	00913423          	sd	s1,8(sp)
    800068c8:	01213023          	sd	s2,0(sp)
    800068cc:	02010413          	addi	s0,sp,32
    800068d0:	00050493          	mv	s1,a0
    800068d4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800068d8:	01853503          	ld	a0,24(a0)
    800068dc:	ffffb097          	auipc	ra,0xffffb
    800068e0:	cc4080e7          	jalr	-828(ra) # 800015a0 <_Z8sem_waitP3SEM>

    sem_wait(mutexTail);
    800068e4:	0304b503          	ld	a0,48(s1)
    800068e8:	ffffb097          	auipc	ra,0xffffb
    800068ec:	cb8080e7          	jalr	-840(ra) # 800015a0 <_Z8sem_waitP3SEM>
    buffer[tail] = val;
    800068f0:	0084b783          	ld	a5,8(s1)
    800068f4:	0144a703          	lw	a4,20(s1)
    800068f8:	00271713          	slli	a4,a4,0x2
    800068fc:	00e787b3          	add	a5,a5,a4
    80006900:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006904:	0144a783          	lw	a5,20(s1)
    80006908:	0017879b          	addiw	a5,a5,1
    8000690c:	0004a703          	lw	a4,0(s1)
    80006910:	02e7e7bb          	remw	a5,a5,a4
    80006914:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006918:	0304b503          	ld	a0,48(s1)
    8000691c:	ffffb097          	auipc	ra,0xffffb
    80006920:	cb4080e7          	jalr	-844(ra) # 800015d0 <_Z10sem_signalP3SEM>

    sem_signal(itemAvailable);
    80006924:	0204b503          	ld	a0,32(s1)
    80006928:	ffffb097          	auipc	ra,0xffffb
    8000692c:	ca8080e7          	jalr	-856(ra) # 800015d0 <_Z10sem_signalP3SEM>

}
    80006930:	01813083          	ld	ra,24(sp)
    80006934:	01013403          	ld	s0,16(sp)
    80006938:	00813483          	ld	s1,8(sp)
    8000693c:	00013903          	ld	s2,0(sp)
    80006940:	02010113          	addi	sp,sp,32
    80006944:	00008067          	ret

0000000080006948 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006948:	fe010113          	addi	sp,sp,-32
    8000694c:	00113c23          	sd	ra,24(sp)
    80006950:	00813823          	sd	s0,16(sp)
    80006954:	00913423          	sd	s1,8(sp)
    80006958:	01213023          	sd	s2,0(sp)
    8000695c:	02010413          	addi	s0,sp,32
    80006960:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006964:	02053503          	ld	a0,32(a0)
    80006968:	ffffb097          	auipc	ra,0xffffb
    8000696c:	c38080e7          	jalr	-968(ra) # 800015a0 <_Z8sem_waitP3SEM>

    sem_wait(mutexHead);
    80006970:	0284b503          	ld	a0,40(s1)
    80006974:	ffffb097          	auipc	ra,0xffffb
    80006978:	c2c080e7          	jalr	-980(ra) # 800015a0 <_Z8sem_waitP3SEM>

    int ret = buffer[head];
    8000697c:	0084b703          	ld	a4,8(s1)
    80006980:	0104a783          	lw	a5,16(s1)
    80006984:	00279693          	slli	a3,a5,0x2
    80006988:	00d70733          	add	a4,a4,a3
    8000698c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006990:	0017879b          	addiw	a5,a5,1
    80006994:	0004a703          	lw	a4,0(s1)
    80006998:	02e7e7bb          	remw	a5,a5,a4
    8000699c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800069a0:	0284b503          	ld	a0,40(s1)
    800069a4:	ffffb097          	auipc	ra,0xffffb
    800069a8:	c2c080e7          	jalr	-980(ra) # 800015d0 <_Z10sem_signalP3SEM>

    sem_signal(spaceAvailable);
    800069ac:	0184b503          	ld	a0,24(s1)
    800069b0:	ffffb097          	auipc	ra,0xffffb
    800069b4:	c20080e7          	jalr	-992(ra) # 800015d0 <_Z10sem_signalP3SEM>

    return ret;
}
    800069b8:	00090513          	mv	a0,s2
    800069bc:	01813083          	ld	ra,24(sp)
    800069c0:	01013403          	ld	s0,16(sp)
    800069c4:	00813483          	ld	s1,8(sp)
    800069c8:	00013903          	ld	s2,0(sp)
    800069cc:	02010113          	addi	sp,sp,32
    800069d0:	00008067          	ret

00000000800069d4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800069d4:	fe010113          	addi	sp,sp,-32
    800069d8:	00113c23          	sd	ra,24(sp)
    800069dc:	00813823          	sd	s0,16(sp)
    800069e0:	00913423          	sd	s1,8(sp)
    800069e4:	01213023          	sd	s2,0(sp)
    800069e8:	02010413          	addi	s0,sp,32
    800069ec:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800069f0:	02853503          	ld	a0,40(a0)
    800069f4:	ffffb097          	auipc	ra,0xffffb
    800069f8:	bac080e7          	jalr	-1108(ra) # 800015a0 <_Z8sem_waitP3SEM>
    sem_wait(mutexTail);
    800069fc:	0304b503          	ld	a0,48(s1)
    80006a00:	ffffb097          	auipc	ra,0xffffb
    80006a04:	ba0080e7          	jalr	-1120(ra) # 800015a0 <_Z8sem_waitP3SEM>

    if (tail >= head) {
    80006a08:	0144a783          	lw	a5,20(s1)
    80006a0c:	0104a903          	lw	s2,16(s1)
    80006a10:	0327ce63          	blt	a5,s2,80006a4c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006a14:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006a18:	0304b503          	ld	a0,48(s1)
    80006a1c:	ffffb097          	auipc	ra,0xffffb
    80006a20:	bb4080e7          	jalr	-1100(ra) # 800015d0 <_Z10sem_signalP3SEM>
    sem_signal(mutexHead);
    80006a24:	0284b503          	ld	a0,40(s1)
    80006a28:	ffffb097          	auipc	ra,0xffffb
    80006a2c:	ba8080e7          	jalr	-1112(ra) # 800015d0 <_Z10sem_signalP3SEM>

    return ret;
}
    80006a30:	00090513          	mv	a0,s2
    80006a34:	01813083          	ld	ra,24(sp)
    80006a38:	01013403          	ld	s0,16(sp)
    80006a3c:	00813483          	ld	s1,8(sp)
    80006a40:	00013903          	ld	s2,0(sp)
    80006a44:	02010113          	addi	sp,sp,32
    80006a48:	00008067          	ret
        ret = cap - head + tail;
    80006a4c:	0004a703          	lw	a4,0(s1)
    80006a50:	4127093b          	subw	s2,a4,s2
    80006a54:	00f9093b          	addw	s2,s2,a5
    80006a58:	fc1ff06f          	j	80006a18 <_ZN6Buffer6getCntEv+0x44>

0000000080006a5c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006a5c:	fe010113          	addi	sp,sp,-32
    80006a60:	00113c23          	sd	ra,24(sp)
    80006a64:	00813823          	sd	s0,16(sp)
    80006a68:	00913423          	sd	s1,8(sp)
    80006a6c:	02010413          	addi	s0,sp,32
    80006a70:	00050493          	mv	s1,a0
    putc('\n');
    80006a74:	00a00513          	li	a0,10
    80006a78:	ffffb097          	auipc	ra,0xffffb
    80006a7c:	bb4080e7          	jalr	-1100(ra) # 8000162c <_Z4putcc>
    printString("Buffer deleted!\n");
    80006a80:	00004517          	auipc	a0,0x4
    80006a84:	93050513          	addi	a0,a0,-1744 # 8000a3b0 <CONSOLE_STATUS+0x3a0>
    80006a88:	fffff097          	auipc	ra,0xfffff
    80006a8c:	af8080e7          	jalr	-1288(ra) # 80005580 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006a90:	00048513          	mv	a0,s1
    80006a94:	00000097          	auipc	ra,0x0
    80006a98:	f40080e7          	jalr	-192(ra) # 800069d4 <_ZN6Buffer6getCntEv>
    80006a9c:	02a05c63          	blez	a0,80006ad4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006aa0:	0084b783          	ld	a5,8(s1)
    80006aa4:	0104a703          	lw	a4,16(s1)
    80006aa8:	00271713          	slli	a4,a4,0x2
    80006aac:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006ab0:	0007c503          	lbu	a0,0(a5)
    80006ab4:	ffffb097          	auipc	ra,0xffffb
    80006ab8:	b78080e7          	jalr	-1160(ra) # 8000162c <_Z4putcc>
        head = (head + 1) % cap;
    80006abc:	0104a783          	lw	a5,16(s1)
    80006ac0:	0017879b          	addiw	a5,a5,1
    80006ac4:	0004a703          	lw	a4,0(s1)
    80006ac8:	02e7e7bb          	remw	a5,a5,a4
    80006acc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006ad0:	fc1ff06f          	j	80006a90 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006ad4:	02100513          	li	a0,33
    80006ad8:	ffffb097          	auipc	ra,0xffffb
    80006adc:	b54080e7          	jalr	-1196(ra) # 8000162c <_Z4putcc>
    putc('\n');
    80006ae0:	00a00513          	li	a0,10
    80006ae4:	ffffb097          	auipc	ra,0xffffb
    80006ae8:	b48080e7          	jalr	-1208(ra) # 8000162c <_Z4putcc>
    mem_free(buffer);
    80006aec:	0084b503          	ld	a0,8(s1)
    80006af0:	ffffb097          	auipc	ra,0xffffb
    80006af4:	8dc080e7          	jalr	-1828(ra) # 800013cc <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006af8:	0204b503          	ld	a0,32(s1)
    80006afc:	ffffb097          	auipc	ra,0xffffb
    80006b00:	a74080e7          	jalr	-1420(ra) # 80001570 <_Z9sem_closeP3SEM>
    sem_close(spaceAvailable);
    80006b04:	0184b503          	ld	a0,24(s1)
    80006b08:	ffffb097          	auipc	ra,0xffffb
    80006b0c:	a68080e7          	jalr	-1432(ra) # 80001570 <_Z9sem_closeP3SEM>
    sem_close(mutexTail);
    80006b10:	0304b503          	ld	a0,48(s1)
    80006b14:	ffffb097          	auipc	ra,0xffffb
    80006b18:	a5c080e7          	jalr	-1444(ra) # 80001570 <_Z9sem_closeP3SEM>
    sem_close(mutexHead);
    80006b1c:	0284b503          	ld	a0,40(s1)
    80006b20:	ffffb097          	auipc	ra,0xffffb
    80006b24:	a50080e7          	jalr	-1456(ra) # 80001570 <_Z9sem_closeP3SEM>
}
    80006b28:	01813083          	ld	ra,24(sp)
    80006b2c:	01013403          	ld	s0,16(sp)
    80006b30:	00813483          	ld	s1,8(sp)
    80006b34:	02010113          	addi	sp,sp,32
    80006b38:	00008067          	ret

0000000080006b3c <_ZN8WorkerTA11workerBodyAEPv>:
    void run() override {
        workerBodyC(nullptr);
    }
};

void WorkerTA::workerBodyA(void *arg) {
    80006b3c:	fe010113          	addi	sp,sp,-32
    80006b40:	00113c23          	sd	ra,24(sp)
    80006b44:	00813823          	sd	s0,16(sp)
    80006b48:	00913423          	sd	s1,8(sp)
    80006b4c:	01213023          	sd	s2,0(sp)
    80006b50:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006b54:	00000913          	li	s2,0
    80006b58:	0380006f          	j	80006b90 <_ZN8WorkerTA11workerBodyAEPv+0x54>
        printString("Nit A sa id-em: "); printInt(a);
        printString(" i ispisom reda i="); printInt(i);
        printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80006b5c:	ffffb097          	auipc	ra,0xffffb
    80006b60:	940080e7          	jalr	-1728(ra) # 8000149c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006b64:	00148493          	addi	s1,s1,1
    80006b68:	000027b7          	lui	a5,0x2
    80006b6c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006b70:	0097ee63          	bltu	a5,s1,80006b8c <_ZN8WorkerTA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006b74:	00000713          	li	a4,0
    80006b78:	000077b7          	lui	a5,0x7
    80006b7c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006b80:	fce7eee3          	bltu	a5,a4,80006b5c <_ZN8WorkerTA11workerBodyAEPv+0x20>
    80006b84:	00170713          	addi	a4,a4,1
    80006b88:	ff1ff06f          	j	80006b78 <_ZN8WorkerTA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006b8c:	00190913          	addi	s2,s2,1
    80006b90:	00900793          	li	a5,9
    80006b94:	0727e863          	bltu	a5,s2,80006c04 <_ZN8WorkerTA11workerBodyAEPv+0xc8>
        int a = thread_get_id();
    80006b98:	ffffb097          	auipc	ra,0xffffb
    80006b9c:	950080e7          	jalr	-1712(ra) # 800014e8 <_Z13thread_get_idv>
    80006ba0:	00050493          	mv	s1,a0
        printString("Nit A sa id-em: "); printInt(a);
    80006ba4:	00004517          	auipc	a0,0x4
    80006ba8:	b8450513          	addi	a0,a0,-1148 # 8000a728 <CONSOLE_STATUS+0x718>
    80006bac:	fffff097          	auipc	ra,0xfffff
    80006bb0:	9d4080e7          	jalr	-1580(ra) # 80005580 <_Z11printStringPKc>
    80006bb4:	00000613          	li	a2,0
    80006bb8:	00a00593          	li	a1,10
    80006bbc:	00048513          	mv	a0,s1
    80006bc0:	fffff097          	auipc	ra,0xfffff
    80006bc4:	b70080e7          	jalr	-1168(ra) # 80005730 <_Z8printIntiii>
        printString(" i ispisom reda i="); printInt(i);
    80006bc8:	00004517          	auipc	a0,0x4
    80006bcc:	b7850513          	addi	a0,a0,-1160 # 8000a740 <CONSOLE_STATUS+0x730>
    80006bd0:	fffff097          	auipc	ra,0xfffff
    80006bd4:	9b0080e7          	jalr	-1616(ra) # 80005580 <_Z11printStringPKc>
    80006bd8:	00000613          	li	a2,0
    80006bdc:	00a00593          	li	a1,10
    80006be0:	0009051b          	sext.w	a0,s2
    80006be4:	fffff097          	auipc	ra,0xfffff
    80006be8:	b4c080e7          	jalr	-1204(ra) # 80005730 <_Z8printIntiii>
        printString("\n");
    80006bec:	00003517          	auipc	a0,0x3
    80006bf0:	76450513          	addi	a0,a0,1892 # 8000a350 <CONSOLE_STATUS+0x340>
    80006bf4:	fffff097          	auipc	ra,0xfffff
    80006bf8:	98c080e7          	jalr	-1652(ra) # 80005580 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006bfc:	00000493          	li	s1,0
    80006c00:	f69ff06f          	j	80006b68 <_ZN8WorkerTA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80006c04:	00003517          	auipc	a0,0x3
    80006c08:	63c50513          	addi	a0,a0,1596 # 8000a240 <CONSOLE_STATUS+0x230>
    80006c0c:	fffff097          	auipc	ra,0xfffff
    80006c10:	974080e7          	jalr	-1676(ra) # 80005580 <_Z11printStringPKc>
    finishedA = true;
    80006c14:	00100793          	li	a5,1
    80006c18:	00006717          	auipc	a4,0x6
    80006c1c:	38f70a23          	sb	a5,916(a4) # 8000cfac <_ZL9finishedA>
}
    80006c20:	01813083          	ld	ra,24(sp)
    80006c24:	01013403          	ld	s0,16(sp)
    80006c28:	00813483          	ld	s1,8(sp)
    80006c2c:	00013903          	ld	s2,0(sp)
    80006c30:	02010113          	addi	sp,sp,32
    80006c34:	00008067          	ret

0000000080006c38 <_ZN8WorkerTB11workerBodyBEPv>:

void WorkerTB::workerBodyB(void *arg) {
    80006c38:	fe010113          	addi	sp,sp,-32
    80006c3c:	00113c23          	sd	ra,24(sp)
    80006c40:	00813823          	sd	s0,16(sp)
    80006c44:	00913423          	sd	s1,8(sp)
    80006c48:	01213023          	sd	s2,0(sp)
    80006c4c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006c50:	00000913          	li	s2,0
    80006c54:	0380006f          	j	80006c8c <_ZN8WorkerTB11workerBodyBEPv+0x54>
        printString("Nit B sa id-em: "); printInt(b);
        printString(" i ispisom reda i="); printInt(i);
        printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80006c58:	ffffb097          	auipc	ra,0xffffb
    80006c5c:	844080e7          	jalr	-1980(ra) # 8000149c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006c60:	00148493          	addi	s1,s1,1
    80006c64:	000027b7          	lui	a5,0x2
    80006c68:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006c6c:	0097ee63          	bltu	a5,s1,80006c88 <_ZN8WorkerTB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006c70:	00000713          	li	a4,0
    80006c74:	000077b7          	lui	a5,0x7
    80006c78:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006c7c:	fce7eee3          	bltu	a5,a4,80006c58 <_ZN8WorkerTB11workerBodyBEPv+0x20>
    80006c80:	00170713          	addi	a4,a4,1
    80006c84:	ff1ff06f          	j	80006c74 <_ZN8WorkerTB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006c88:	00190913          	addi	s2,s2,1
    80006c8c:	00900793          	li	a5,9
    80006c90:	0727e863          	bltu	a5,s2,80006d00 <_ZN8WorkerTB11workerBodyBEPv+0xc8>
        int b = thread_get_id();
    80006c94:	ffffb097          	auipc	ra,0xffffb
    80006c98:	854080e7          	jalr	-1964(ra) # 800014e8 <_Z13thread_get_idv>
    80006c9c:	00050493          	mv	s1,a0
        printString("Nit B sa id-em: "); printInt(b);
    80006ca0:	00004517          	auipc	a0,0x4
    80006ca4:	ab850513          	addi	a0,a0,-1352 # 8000a758 <CONSOLE_STATUS+0x748>
    80006ca8:	fffff097          	auipc	ra,0xfffff
    80006cac:	8d8080e7          	jalr	-1832(ra) # 80005580 <_Z11printStringPKc>
    80006cb0:	00000613          	li	a2,0
    80006cb4:	00a00593          	li	a1,10
    80006cb8:	00048513          	mv	a0,s1
    80006cbc:	fffff097          	auipc	ra,0xfffff
    80006cc0:	a74080e7          	jalr	-1420(ra) # 80005730 <_Z8printIntiii>
        printString(" i ispisom reda i="); printInt(i);
    80006cc4:	00004517          	auipc	a0,0x4
    80006cc8:	a7c50513          	addi	a0,a0,-1412 # 8000a740 <CONSOLE_STATUS+0x730>
    80006ccc:	fffff097          	auipc	ra,0xfffff
    80006cd0:	8b4080e7          	jalr	-1868(ra) # 80005580 <_Z11printStringPKc>
    80006cd4:	00000613          	li	a2,0
    80006cd8:	00a00593          	li	a1,10
    80006cdc:	0009051b          	sext.w	a0,s2
    80006ce0:	fffff097          	auipc	ra,0xfffff
    80006ce4:	a50080e7          	jalr	-1456(ra) # 80005730 <_Z8printIntiii>
        printString("\n");
    80006ce8:	00003517          	auipc	a0,0x3
    80006cec:	66850513          	addi	a0,a0,1640 # 8000a350 <CONSOLE_STATUS+0x340>
    80006cf0:	fffff097          	auipc	ra,0xfffff
    80006cf4:	890080e7          	jalr	-1904(ra) # 80005580 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006cf8:	00000493          	li	s1,0
    80006cfc:	f69ff06f          	j	80006c64 <_ZN8WorkerTB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80006d00:	00003517          	auipc	a0,0x3
    80006d04:	55850513          	addi	a0,a0,1368 # 8000a258 <CONSOLE_STATUS+0x248>
    80006d08:	fffff097          	auipc	ra,0xfffff
    80006d0c:	878080e7          	jalr	-1928(ra) # 80005580 <_Z11printStringPKc>
    finishedA = true;
    80006d10:	00100793          	li	a5,1
    80006d14:	00006717          	auipc	a4,0x6
    80006d18:	28f70c23          	sb	a5,664(a4) # 8000cfac <_ZL9finishedA>
}
    80006d1c:	01813083          	ld	ra,24(sp)
    80006d20:	01013403          	ld	s0,16(sp)
    80006d24:	00813483          	ld	s1,8(sp)
    80006d28:	00013903          	ld	s2,0(sp)
    80006d2c:	02010113          	addi	sp,sp,32
    80006d30:	00008067          	ret

0000000080006d34 <_ZN8WorkerTC11workerBodyCEPv>:

void WorkerTC::workerBodyC(void *arg) {
    80006d34:	fe010113          	addi	sp,sp,-32
    80006d38:	00113c23          	sd	ra,24(sp)
    80006d3c:	00813823          	sd	s0,16(sp)
    80006d40:	00913423          	sd	s1,8(sp)
    80006d44:	01213023          	sd	s2,0(sp)
    80006d48:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006d4c:	00000913          	li	s2,0
    80006d50:	0380006f          	j	80006d88 <_ZN8WorkerTC11workerBodyCEPv+0x54>
        printString("Nit C sa id-em: "); printInt(c);
        printString(" i ispisom reda i="); printInt(i);
        printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80006d54:	ffffa097          	auipc	ra,0xffffa
    80006d58:	748080e7          	jalr	1864(ra) # 8000149c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006d5c:	00148493          	addi	s1,s1,1
    80006d60:	000027b7          	lui	a5,0x2
    80006d64:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006d68:	0097ee63          	bltu	a5,s1,80006d84 <_ZN8WorkerTC11workerBodyCEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006d6c:	00000713          	li	a4,0
    80006d70:	000077b7          	lui	a5,0x7
    80006d74:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006d78:	fce7eee3          	bltu	a5,a4,80006d54 <_ZN8WorkerTC11workerBodyCEPv+0x20>
    80006d7c:	00170713          	addi	a4,a4,1
    80006d80:	ff1ff06f          	j	80006d70 <_ZN8WorkerTC11workerBodyCEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006d84:	00190913          	addi	s2,s2,1
    80006d88:	00900793          	li	a5,9
    80006d8c:	0727e863          	bltu	a5,s2,80006dfc <_ZN8WorkerTC11workerBodyCEPv+0xc8>
        int c = thread_get_id();
    80006d90:	ffffa097          	auipc	ra,0xffffa
    80006d94:	758080e7          	jalr	1880(ra) # 800014e8 <_Z13thread_get_idv>
    80006d98:	00050493          	mv	s1,a0
        printString("Nit C sa id-em: "); printInt(c);
    80006d9c:	00004517          	auipc	a0,0x4
    80006da0:	9d450513          	addi	a0,a0,-1580 # 8000a770 <CONSOLE_STATUS+0x760>
    80006da4:	ffffe097          	auipc	ra,0xffffe
    80006da8:	7dc080e7          	jalr	2012(ra) # 80005580 <_Z11printStringPKc>
    80006dac:	00000613          	li	a2,0
    80006db0:	00a00593          	li	a1,10
    80006db4:	00048513          	mv	a0,s1
    80006db8:	fffff097          	auipc	ra,0xfffff
    80006dbc:	978080e7          	jalr	-1672(ra) # 80005730 <_Z8printIntiii>
        printString(" i ispisom reda i="); printInt(i);
    80006dc0:	00004517          	auipc	a0,0x4
    80006dc4:	98050513          	addi	a0,a0,-1664 # 8000a740 <CONSOLE_STATUS+0x730>
    80006dc8:	ffffe097          	auipc	ra,0xffffe
    80006dcc:	7b8080e7          	jalr	1976(ra) # 80005580 <_Z11printStringPKc>
    80006dd0:	00000613          	li	a2,0
    80006dd4:	00a00593          	li	a1,10
    80006dd8:	0009051b          	sext.w	a0,s2
    80006ddc:	fffff097          	auipc	ra,0xfffff
    80006de0:	954080e7          	jalr	-1708(ra) # 80005730 <_Z8printIntiii>
        printString("\n");
    80006de4:	00003517          	auipc	a0,0x3
    80006de8:	56c50513          	addi	a0,a0,1388 # 8000a350 <CONSOLE_STATUS+0x340>
    80006dec:	ffffe097          	auipc	ra,0xffffe
    80006df0:	794080e7          	jalr	1940(ra) # 80005580 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006df4:	00000493          	li	s1,0
    80006df8:	f69ff06f          	j	80006d60 <_ZN8WorkerTC11workerBodyCEPv+0x2c>
        }
    }
    printString("C finished!\n");
    80006dfc:	00003517          	auipc	a0,0x3
    80006e00:	49c50513          	addi	a0,a0,1180 # 8000a298 <CONSOLE_STATUS+0x288>
    80006e04:	ffffe097          	auipc	ra,0xffffe
    80006e08:	77c080e7          	jalr	1916(ra) # 80005580 <_Z11printStringPKc>
    finishedA = true;
    80006e0c:	00100793          	li	a5,1
    80006e10:	00006717          	auipc	a4,0x6
    80006e14:	18f70e23          	sb	a5,412(a4) # 8000cfac <_ZL9finishedA>
}
    80006e18:	01813083          	ld	ra,24(sp)
    80006e1c:	01013403          	ld	s0,16(sp)
    80006e20:	00813483          	ld	s1,8(sp)
    80006e24:	00013903          	ld	s2,0(sp)
    80006e28:	02010113          	addi	sp,sp,32
    80006e2c:	00008067          	ret

0000000080006e30 <_Z19Threads_ID_API_testv>:

void Threads_ID_API_test() {
    80006e30:	fc010113          	addi	sp,sp,-64
    80006e34:	02113c23          	sd	ra,56(sp)
    80006e38:	02813823          	sd	s0,48(sp)
    80006e3c:	02913423          	sd	s1,40(sp)
    80006e40:	03213023          	sd	s2,32(sp)
    80006e44:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerTA();
    80006e48:	02000513          	li	a0,32
    80006e4c:	ffffb097          	auipc	ra,0xffffb
    80006e50:	f38080e7          	jalr	-200(ra) # 80001d84 <_Znwm>
    80006e54:	00050493          	mv	s1,a0
    WorkerTA():Thread() {}
    80006e58:	ffffb097          	auipc	ra,0xffffb
    80006e5c:	144080e7          	jalr	324(ra) # 80001f9c <_ZN6ThreadC1Ev>
    80006e60:	00006797          	auipc	a5,0x6
    80006e64:	f8078793          	addi	a5,a5,-128 # 8000cde0 <_ZTV8WorkerTA+0x10>
    80006e68:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerTA();
    80006e6c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80006e70:	00003517          	auipc	a0,0x3
    80006e74:	47050513          	addi	a0,a0,1136 # 8000a2e0 <CONSOLE_STATUS+0x2d0>
    80006e78:	ffffe097          	auipc	ra,0xffffe
    80006e7c:	708080e7          	jalr	1800(ra) # 80005580 <_Z11printStringPKc>

    threads[1] = new WorkerTB();
    80006e80:	02000513          	li	a0,32
    80006e84:	ffffb097          	auipc	ra,0xffffb
    80006e88:	f00080e7          	jalr	-256(ra) # 80001d84 <_Znwm>
    80006e8c:	00050493          	mv	s1,a0
    WorkerTB():Thread() {}
    80006e90:	ffffb097          	auipc	ra,0xffffb
    80006e94:	10c080e7          	jalr	268(ra) # 80001f9c <_ZN6ThreadC1Ev>
    80006e98:	00006797          	auipc	a5,0x6
    80006e9c:	f7078793          	addi	a5,a5,-144 # 8000ce08 <_ZTV8WorkerTB+0x10>
    80006ea0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerTB();
    80006ea4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80006ea8:	00003517          	auipc	a0,0x3
    80006eac:	45050513          	addi	a0,a0,1104 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80006eb0:	ffffe097          	auipc	ra,0xffffe
    80006eb4:	6d0080e7          	jalr	1744(ra) # 80005580 <_Z11printStringPKc>

    threads[2] = new WorkerTC();
    80006eb8:	02000513          	li	a0,32
    80006ebc:	ffffb097          	auipc	ra,0xffffb
    80006ec0:	ec8080e7          	jalr	-312(ra) # 80001d84 <_Znwm>
    80006ec4:	00050493          	mv	s1,a0
    WorkerTC():Thread() {}
    80006ec8:	ffffb097          	auipc	ra,0xffffb
    80006ecc:	0d4080e7          	jalr	212(ra) # 80001f9c <_ZN6ThreadC1Ev>
    80006ed0:	00006797          	auipc	a5,0x6
    80006ed4:	f6078793          	addi	a5,a5,-160 # 8000ce30 <_ZTV8WorkerTC+0x10>
    80006ed8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerTC();
    80006edc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80006ee0:	00003517          	auipc	a0,0x3
    80006ee4:	43050513          	addi	a0,a0,1072 # 8000a310 <CONSOLE_STATUS+0x300>
    80006ee8:	ffffe097          	auipc	ra,0xffffe
    80006eec:	698080e7          	jalr	1688(ra) # 80005580 <_Z11printStringPKc>

    for(int i=0; i<3; i++) {
    80006ef0:	00000493          	li	s1,0
    80006ef4:	00200793          	li	a5,2
    80006ef8:	0297c663          	blt	a5,s1,80006f24 <_Z19Threads_ID_API_testv+0xf4>
        threads[i]->start();
    80006efc:	00349793          	slli	a5,s1,0x3
    80006f00:	fe040713          	addi	a4,s0,-32
    80006f04:	00f707b3          	add	a5,a4,a5
    80006f08:	fe07b503          	ld	a0,-32(a5)
    80006f0c:	ffffb097          	auipc	ra,0xffffb
    80006f10:	0c4080e7          	jalr	196(ra) # 80001fd0 <_ZN6Thread5startEv>
    for(int i=0; i<3; i++) {
    80006f14:	0014849b          	addiw	s1,s1,1
    80006f18:	fddff06f          	j	80006ef4 <_Z19Threads_ID_API_testv+0xc4>
    }

    while (!(finishedA && finishedB && finishedC)) {
        Thread::dispatch();
    80006f1c:	ffffb097          	auipc	ra,0xffffb
    80006f20:	13c080e7          	jalr	316(ra) # 80002058 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC)) {
    80006f24:	00006797          	auipc	a5,0x6
    80006f28:	0887c783          	lbu	a5,136(a5) # 8000cfac <_ZL9finishedA>
    80006f2c:	fe0788e3          	beqz	a5,80006f1c <_Z19Threads_ID_API_testv+0xec>
    80006f30:	00006797          	auipc	a5,0x6
    80006f34:	07d7c783          	lbu	a5,125(a5) # 8000cfad <_ZL9finishedB>
    80006f38:	fe0782e3          	beqz	a5,80006f1c <_Z19Threads_ID_API_testv+0xec>
    80006f3c:	00006797          	auipc	a5,0x6
    80006f40:	0727c783          	lbu	a5,114(a5) # 8000cfae <_ZL9finishedC>
    80006f44:	fc078ce3          	beqz	a5,80006f1c <_Z19Threads_ID_API_testv+0xec>
    80006f48:	fc040493          	addi	s1,s0,-64
    80006f4c:	0080006f          	j	80006f54 <_Z19Threads_ID_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80006f50:	00848493          	addi	s1,s1,8
    80006f54:	fe040793          	addi	a5,s0,-32
    80006f58:	06f48863          	beq	s1,a5,80006fc8 <_Z19Threads_ID_API_testv+0x198>
    80006f5c:	0004b503          	ld	a0,0(s1)
    80006f60:	fe0508e3          	beqz	a0,80006f50 <_Z19Threads_ID_API_testv+0x120>
    80006f64:	00053783          	ld	a5,0(a0)
    80006f68:	0087b783          	ld	a5,8(a5)
    80006f6c:	000780e7          	jalr	a5
    80006f70:	fe1ff06f          	j	80006f50 <_Z19Threads_ID_API_testv+0x120>
    80006f74:	00050913          	mv	s2,a0
    threads[0] = new WorkerTA();
    80006f78:	00048513          	mv	a0,s1
    80006f7c:	ffffb097          	auipc	ra,0xffffb
    80006f80:	e58080e7          	jalr	-424(ra) # 80001dd4 <_ZdlPv>
    80006f84:	00090513          	mv	a0,s2
    80006f88:	00007097          	auipc	ra,0x7
    80006f8c:	0f0080e7          	jalr	240(ra) # 8000e078 <_Unwind_Resume>
    80006f90:	00050913          	mv	s2,a0
    threads[1] = new WorkerTB();
    80006f94:	00048513          	mv	a0,s1
    80006f98:	ffffb097          	auipc	ra,0xffffb
    80006f9c:	e3c080e7          	jalr	-452(ra) # 80001dd4 <_ZdlPv>
    80006fa0:	00090513          	mv	a0,s2
    80006fa4:	00007097          	auipc	ra,0x7
    80006fa8:	0d4080e7          	jalr	212(ra) # 8000e078 <_Unwind_Resume>
    80006fac:	00050913          	mv	s2,a0
    threads[2] = new WorkerTC();
    80006fb0:	00048513          	mv	a0,s1
    80006fb4:	ffffb097          	auipc	ra,0xffffb
    80006fb8:	e20080e7          	jalr	-480(ra) # 80001dd4 <_ZdlPv>
    80006fbc:	00090513          	mv	a0,s2
    80006fc0:	00007097          	auipc	ra,0x7
    80006fc4:	0b8080e7          	jalr	184(ra) # 8000e078 <_Unwind_Resume>
    80006fc8:	03813083          	ld	ra,56(sp)
    80006fcc:	03013403          	ld	s0,48(sp)
    80006fd0:	02813483          	ld	s1,40(sp)
    80006fd4:	02013903          	ld	s2,32(sp)
    80006fd8:	04010113          	addi	sp,sp,64
    80006fdc:	00008067          	ret

0000000080006fe0 <_ZN8WorkerTAD1Ev>:
class WorkerTA: public Thread {
    80006fe0:	ff010113          	addi	sp,sp,-16
    80006fe4:	00113423          	sd	ra,8(sp)
    80006fe8:	00813023          	sd	s0,0(sp)
    80006fec:	01010413          	addi	s0,sp,16
    80006ff0:	00006797          	auipc	a5,0x6
    80006ff4:	df078793          	addi	a5,a5,-528 # 8000cde0 <_ZTV8WorkerTA+0x10>
    80006ff8:	00f53023          	sd	a5,0(a0)
    80006ffc:	ffffb097          	auipc	ra,0xffffb
    80007000:	e64080e7          	jalr	-412(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80007004:	00813083          	ld	ra,8(sp)
    80007008:	00013403          	ld	s0,0(sp)
    8000700c:	01010113          	addi	sp,sp,16
    80007010:	00008067          	ret

0000000080007014 <_ZN8WorkerTAD0Ev>:
    80007014:	fe010113          	addi	sp,sp,-32
    80007018:	00113c23          	sd	ra,24(sp)
    8000701c:	00813823          	sd	s0,16(sp)
    80007020:	00913423          	sd	s1,8(sp)
    80007024:	02010413          	addi	s0,sp,32
    80007028:	00050493          	mv	s1,a0
    8000702c:	00006797          	auipc	a5,0x6
    80007030:	db478793          	addi	a5,a5,-588 # 8000cde0 <_ZTV8WorkerTA+0x10>
    80007034:	00f53023          	sd	a5,0(a0)
    80007038:	ffffb097          	auipc	ra,0xffffb
    8000703c:	e28080e7          	jalr	-472(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80007040:	00048513          	mv	a0,s1
    80007044:	ffffb097          	auipc	ra,0xffffb
    80007048:	d90080e7          	jalr	-624(ra) # 80001dd4 <_ZdlPv>
    8000704c:	01813083          	ld	ra,24(sp)
    80007050:	01013403          	ld	s0,16(sp)
    80007054:	00813483          	ld	s1,8(sp)
    80007058:	02010113          	addi	sp,sp,32
    8000705c:	00008067          	ret

0000000080007060 <_ZN8WorkerTBD1Ev>:
class WorkerTB: public Thread {
    80007060:	ff010113          	addi	sp,sp,-16
    80007064:	00113423          	sd	ra,8(sp)
    80007068:	00813023          	sd	s0,0(sp)
    8000706c:	01010413          	addi	s0,sp,16
    80007070:	00006797          	auipc	a5,0x6
    80007074:	d9878793          	addi	a5,a5,-616 # 8000ce08 <_ZTV8WorkerTB+0x10>
    80007078:	00f53023          	sd	a5,0(a0)
    8000707c:	ffffb097          	auipc	ra,0xffffb
    80007080:	de4080e7          	jalr	-540(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80007084:	00813083          	ld	ra,8(sp)
    80007088:	00013403          	ld	s0,0(sp)
    8000708c:	01010113          	addi	sp,sp,16
    80007090:	00008067          	ret

0000000080007094 <_ZN8WorkerTBD0Ev>:
    80007094:	fe010113          	addi	sp,sp,-32
    80007098:	00113c23          	sd	ra,24(sp)
    8000709c:	00813823          	sd	s0,16(sp)
    800070a0:	00913423          	sd	s1,8(sp)
    800070a4:	02010413          	addi	s0,sp,32
    800070a8:	00050493          	mv	s1,a0
    800070ac:	00006797          	auipc	a5,0x6
    800070b0:	d5c78793          	addi	a5,a5,-676 # 8000ce08 <_ZTV8WorkerTB+0x10>
    800070b4:	00f53023          	sd	a5,0(a0)
    800070b8:	ffffb097          	auipc	ra,0xffffb
    800070bc:	da8080e7          	jalr	-600(ra) # 80001e60 <_ZN6ThreadD1Ev>
    800070c0:	00048513          	mv	a0,s1
    800070c4:	ffffb097          	auipc	ra,0xffffb
    800070c8:	d10080e7          	jalr	-752(ra) # 80001dd4 <_ZdlPv>
    800070cc:	01813083          	ld	ra,24(sp)
    800070d0:	01013403          	ld	s0,16(sp)
    800070d4:	00813483          	ld	s1,8(sp)
    800070d8:	02010113          	addi	sp,sp,32
    800070dc:	00008067          	ret

00000000800070e0 <_ZN8WorkerTCD1Ev>:
class WorkerTC: public Thread {
    800070e0:	ff010113          	addi	sp,sp,-16
    800070e4:	00113423          	sd	ra,8(sp)
    800070e8:	00813023          	sd	s0,0(sp)
    800070ec:	01010413          	addi	s0,sp,16
    800070f0:	00006797          	auipc	a5,0x6
    800070f4:	d4078793          	addi	a5,a5,-704 # 8000ce30 <_ZTV8WorkerTC+0x10>
    800070f8:	00f53023          	sd	a5,0(a0)
    800070fc:	ffffb097          	auipc	ra,0xffffb
    80007100:	d64080e7          	jalr	-668(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80007104:	00813083          	ld	ra,8(sp)
    80007108:	00013403          	ld	s0,0(sp)
    8000710c:	01010113          	addi	sp,sp,16
    80007110:	00008067          	ret

0000000080007114 <_ZN8WorkerTCD0Ev>:
    80007114:	fe010113          	addi	sp,sp,-32
    80007118:	00113c23          	sd	ra,24(sp)
    8000711c:	00813823          	sd	s0,16(sp)
    80007120:	00913423          	sd	s1,8(sp)
    80007124:	02010413          	addi	s0,sp,32
    80007128:	00050493          	mv	s1,a0
    8000712c:	00006797          	auipc	a5,0x6
    80007130:	d0478793          	addi	a5,a5,-764 # 8000ce30 <_ZTV8WorkerTC+0x10>
    80007134:	00f53023          	sd	a5,0(a0)
    80007138:	ffffb097          	auipc	ra,0xffffb
    8000713c:	d28080e7          	jalr	-728(ra) # 80001e60 <_ZN6ThreadD1Ev>
    80007140:	00048513          	mv	a0,s1
    80007144:	ffffb097          	auipc	ra,0xffffb
    80007148:	c90080e7          	jalr	-880(ra) # 80001dd4 <_ZdlPv>
    8000714c:	01813083          	ld	ra,24(sp)
    80007150:	01013403          	ld	s0,16(sp)
    80007154:	00813483          	ld	s1,8(sp)
    80007158:	02010113          	addi	sp,sp,32
    8000715c:	00008067          	ret

0000000080007160 <_ZN8WorkerTA3runEv>:
    void run() override {
    80007160:	ff010113          	addi	sp,sp,-16
    80007164:	00113423          	sd	ra,8(sp)
    80007168:	00813023          	sd	s0,0(sp)
    8000716c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80007170:	00000593          	li	a1,0
    80007174:	00000097          	auipc	ra,0x0
    80007178:	9c8080e7          	jalr	-1592(ra) # 80006b3c <_ZN8WorkerTA11workerBodyAEPv>
    }
    8000717c:	00813083          	ld	ra,8(sp)
    80007180:	00013403          	ld	s0,0(sp)
    80007184:	01010113          	addi	sp,sp,16
    80007188:	00008067          	ret

000000008000718c <_ZN8WorkerTB3runEv>:
    void run() override {
    8000718c:	ff010113          	addi	sp,sp,-16
    80007190:	00113423          	sd	ra,8(sp)
    80007194:	00813023          	sd	s0,0(sp)
    80007198:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000719c:	00000593          	li	a1,0
    800071a0:	00000097          	auipc	ra,0x0
    800071a4:	a98080e7          	jalr	-1384(ra) # 80006c38 <_ZN8WorkerTB11workerBodyBEPv>
    }
    800071a8:	00813083          	ld	ra,8(sp)
    800071ac:	00013403          	ld	s0,0(sp)
    800071b0:	01010113          	addi	sp,sp,16
    800071b4:	00008067          	ret

00000000800071b8 <_ZN8WorkerTC3runEv>:
    void run() override {
    800071b8:	ff010113          	addi	sp,sp,-16
    800071bc:	00113423          	sd	ra,8(sp)
    800071c0:	00813023          	sd	s0,0(sp)
    800071c4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800071c8:	00000593          	li	a1,0
    800071cc:	00000097          	auipc	ra,0x0
    800071d0:	b68080e7          	jalr	-1176(ra) # 80006d34 <_ZN8WorkerTC11workerBodyCEPv>
    }
    800071d4:	00813083          	ld	ra,8(sp)
    800071d8:	00013403          	ld	s0,0(sp)
    800071dc:	01010113          	addi	sp,sp,16
    800071e0:	00008067          	ret

00000000800071e4 <start>:
    800071e4:	ff010113          	addi	sp,sp,-16
    800071e8:	00813423          	sd	s0,8(sp)
    800071ec:	01010413          	addi	s0,sp,16
    800071f0:	300027f3          	csrr	a5,mstatus
    800071f4:	ffffe737          	lui	a4,0xffffe
    800071f8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff05ef>
    800071fc:	00e7f7b3          	and	a5,a5,a4
    80007200:	00001737          	lui	a4,0x1
    80007204:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80007208:	00e7e7b3          	or	a5,a5,a4
    8000720c:	30079073          	csrw	mstatus,a5
    80007210:	00000797          	auipc	a5,0x0
    80007214:	16078793          	addi	a5,a5,352 # 80007370 <system_main>
    80007218:	34179073          	csrw	mepc,a5
    8000721c:	00000793          	li	a5,0
    80007220:	18079073          	csrw	satp,a5
    80007224:	000107b7          	lui	a5,0x10
    80007228:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000722c:	30279073          	csrw	medeleg,a5
    80007230:	30379073          	csrw	mideleg,a5
    80007234:	104027f3          	csrr	a5,sie
    80007238:	2227e793          	ori	a5,a5,546
    8000723c:	10479073          	csrw	sie,a5
    80007240:	fff00793          	li	a5,-1
    80007244:	00a7d793          	srli	a5,a5,0xa
    80007248:	3b079073          	csrw	pmpaddr0,a5
    8000724c:	00f00793          	li	a5,15
    80007250:	3a079073          	csrw	pmpcfg0,a5
    80007254:	f14027f3          	csrr	a5,mhartid
    80007258:	0200c737          	lui	a4,0x200c
    8000725c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007260:	0007869b          	sext.w	a3,a5
    80007264:	00269713          	slli	a4,a3,0x2
    80007268:	000f4637          	lui	a2,0xf4
    8000726c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007270:	00d70733          	add	a4,a4,a3
    80007274:	0037979b          	slliw	a5,a5,0x3
    80007278:	020046b7          	lui	a3,0x2004
    8000727c:	00d787b3          	add	a5,a5,a3
    80007280:	00c585b3          	add	a1,a1,a2
    80007284:	00371693          	slli	a3,a4,0x3
    80007288:	00006717          	auipc	a4,0x6
    8000728c:	d2870713          	addi	a4,a4,-728 # 8000cfb0 <timer_scratch>
    80007290:	00b7b023          	sd	a1,0(a5)
    80007294:	00d70733          	add	a4,a4,a3
    80007298:	00f73c23          	sd	a5,24(a4)
    8000729c:	02c73023          	sd	a2,32(a4)
    800072a0:	34071073          	csrw	mscratch,a4
    800072a4:	00000797          	auipc	a5,0x0
    800072a8:	6ec78793          	addi	a5,a5,1772 # 80007990 <timervec>
    800072ac:	30579073          	csrw	mtvec,a5
    800072b0:	300027f3          	csrr	a5,mstatus
    800072b4:	0087e793          	ori	a5,a5,8
    800072b8:	30079073          	csrw	mstatus,a5
    800072bc:	304027f3          	csrr	a5,mie
    800072c0:	0807e793          	ori	a5,a5,128
    800072c4:	30479073          	csrw	mie,a5
    800072c8:	f14027f3          	csrr	a5,mhartid
    800072cc:	0007879b          	sext.w	a5,a5
    800072d0:	00078213          	mv	tp,a5
    800072d4:	30200073          	mret
    800072d8:	00813403          	ld	s0,8(sp)
    800072dc:	01010113          	addi	sp,sp,16
    800072e0:	00008067          	ret

00000000800072e4 <timerinit>:
    800072e4:	ff010113          	addi	sp,sp,-16
    800072e8:	00813423          	sd	s0,8(sp)
    800072ec:	01010413          	addi	s0,sp,16
    800072f0:	f14027f3          	csrr	a5,mhartid
    800072f4:	0200c737          	lui	a4,0x200c
    800072f8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800072fc:	0007869b          	sext.w	a3,a5
    80007300:	00269713          	slli	a4,a3,0x2
    80007304:	000f4637          	lui	a2,0xf4
    80007308:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000730c:	00d70733          	add	a4,a4,a3
    80007310:	0037979b          	slliw	a5,a5,0x3
    80007314:	020046b7          	lui	a3,0x2004
    80007318:	00d787b3          	add	a5,a5,a3
    8000731c:	00c585b3          	add	a1,a1,a2
    80007320:	00371693          	slli	a3,a4,0x3
    80007324:	00006717          	auipc	a4,0x6
    80007328:	c8c70713          	addi	a4,a4,-884 # 8000cfb0 <timer_scratch>
    8000732c:	00b7b023          	sd	a1,0(a5)
    80007330:	00d70733          	add	a4,a4,a3
    80007334:	00f73c23          	sd	a5,24(a4)
    80007338:	02c73023          	sd	a2,32(a4)
    8000733c:	34071073          	csrw	mscratch,a4
    80007340:	00000797          	auipc	a5,0x0
    80007344:	65078793          	addi	a5,a5,1616 # 80007990 <timervec>
    80007348:	30579073          	csrw	mtvec,a5
    8000734c:	300027f3          	csrr	a5,mstatus
    80007350:	0087e793          	ori	a5,a5,8
    80007354:	30079073          	csrw	mstatus,a5
    80007358:	304027f3          	csrr	a5,mie
    8000735c:	0807e793          	ori	a5,a5,128
    80007360:	30479073          	csrw	mie,a5
    80007364:	00813403          	ld	s0,8(sp)
    80007368:	01010113          	addi	sp,sp,16
    8000736c:	00008067          	ret

0000000080007370 <system_main>:
    80007370:	fe010113          	addi	sp,sp,-32
    80007374:	00813823          	sd	s0,16(sp)
    80007378:	00913423          	sd	s1,8(sp)
    8000737c:	00113c23          	sd	ra,24(sp)
    80007380:	02010413          	addi	s0,sp,32
    80007384:	00000097          	auipc	ra,0x0
    80007388:	0c4080e7          	jalr	196(ra) # 80007448 <cpuid>
    8000738c:	00006497          	auipc	s1,0x6
    80007390:	b2448493          	addi	s1,s1,-1244 # 8000ceb0 <started>
    80007394:	02050263          	beqz	a0,800073b8 <system_main+0x48>
    80007398:	0004a783          	lw	a5,0(s1)
    8000739c:	0007879b          	sext.w	a5,a5
    800073a0:	fe078ce3          	beqz	a5,80007398 <system_main+0x28>
    800073a4:	0ff0000f          	fence
    800073a8:	00003517          	auipc	a0,0x3
    800073ac:	41050513          	addi	a0,a0,1040 # 8000a7b8 <CONSOLE_STATUS+0x7a8>
    800073b0:	00001097          	auipc	ra,0x1
    800073b4:	a7c080e7          	jalr	-1412(ra) # 80007e2c <panic>
    800073b8:	00001097          	auipc	ra,0x1
    800073bc:	9d0080e7          	jalr	-1584(ra) # 80007d88 <consoleinit>
    800073c0:	00001097          	auipc	ra,0x1
    800073c4:	15c080e7          	jalr	348(ra) # 8000851c <printfinit>
    800073c8:	00003517          	auipc	a0,0x3
    800073cc:	f8850513          	addi	a0,a0,-120 # 8000a350 <CONSOLE_STATUS+0x340>
    800073d0:	00001097          	auipc	ra,0x1
    800073d4:	ab8080e7          	jalr	-1352(ra) # 80007e88 <__printf>
    800073d8:	00003517          	auipc	a0,0x3
    800073dc:	3b050513          	addi	a0,a0,944 # 8000a788 <CONSOLE_STATUS+0x778>
    800073e0:	00001097          	auipc	ra,0x1
    800073e4:	aa8080e7          	jalr	-1368(ra) # 80007e88 <__printf>
    800073e8:	00003517          	auipc	a0,0x3
    800073ec:	f6850513          	addi	a0,a0,-152 # 8000a350 <CONSOLE_STATUS+0x340>
    800073f0:	00001097          	auipc	ra,0x1
    800073f4:	a98080e7          	jalr	-1384(ra) # 80007e88 <__printf>
    800073f8:	00001097          	auipc	ra,0x1
    800073fc:	4b0080e7          	jalr	1200(ra) # 800088a8 <kinit>
    80007400:	00000097          	auipc	ra,0x0
    80007404:	148080e7          	jalr	328(ra) # 80007548 <trapinit>
    80007408:	00000097          	auipc	ra,0x0
    8000740c:	16c080e7          	jalr	364(ra) # 80007574 <trapinithart>
    80007410:	00000097          	auipc	ra,0x0
    80007414:	5c0080e7          	jalr	1472(ra) # 800079d0 <plicinit>
    80007418:	00000097          	auipc	ra,0x0
    8000741c:	5e0080e7          	jalr	1504(ra) # 800079f8 <plicinithart>
    80007420:	00000097          	auipc	ra,0x0
    80007424:	078080e7          	jalr	120(ra) # 80007498 <userinit>
    80007428:	0ff0000f          	fence
    8000742c:	00100793          	li	a5,1
    80007430:	00003517          	auipc	a0,0x3
    80007434:	37050513          	addi	a0,a0,880 # 8000a7a0 <CONSOLE_STATUS+0x790>
    80007438:	00f4a023          	sw	a5,0(s1)
    8000743c:	00001097          	auipc	ra,0x1
    80007440:	a4c080e7          	jalr	-1460(ra) # 80007e88 <__printf>
    80007444:	0000006f          	j	80007444 <system_main+0xd4>

0000000080007448 <cpuid>:
    80007448:	ff010113          	addi	sp,sp,-16
    8000744c:	00813423          	sd	s0,8(sp)
    80007450:	01010413          	addi	s0,sp,16
    80007454:	00020513          	mv	a0,tp
    80007458:	00813403          	ld	s0,8(sp)
    8000745c:	0005051b          	sext.w	a0,a0
    80007460:	01010113          	addi	sp,sp,16
    80007464:	00008067          	ret

0000000080007468 <mycpu>:
    80007468:	ff010113          	addi	sp,sp,-16
    8000746c:	00813423          	sd	s0,8(sp)
    80007470:	01010413          	addi	s0,sp,16
    80007474:	00020793          	mv	a5,tp
    80007478:	00813403          	ld	s0,8(sp)
    8000747c:	0007879b          	sext.w	a5,a5
    80007480:	00779793          	slli	a5,a5,0x7
    80007484:	00007517          	auipc	a0,0x7
    80007488:	b5c50513          	addi	a0,a0,-1188 # 8000dfe0 <cpus>
    8000748c:	00f50533          	add	a0,a0,a5
    80007490:	01010113          	addi	sp,sp,16
    80007494:	00008067          	ret

0000000080007498 <userinit>:
    80007498:	ff010113          	addi	sp,sp,-16
    8000749c:	00813423          	sd	s0,8(sp)
    800074a0:	01010413          	addi	s0,sp,16
    800074a4:	00813403          	ld	s0,8(sp)
    800074a8:	01010113          	addi	sp,sp,16
    800074ac:	ffffa317          	auipc	t1,0xffffa
    800074b0:	1fc30067          	jr	508(t1) # 800016a8 <main>

00000000800074b4 <either_copyout>:
    800074b4:	ff010113          	addi	sp,sp,-16
    800074b8:	00813023          	sd	s0,0(sp)
    800074bc:	00113423          	sd	ra,8(sp)
    800074c0:	01010413          	addi	s0,sp,16
    800074c4:	02051663          	bnez	a0,800074f0 <either_copyout+0x3c>
    800074c8:	00058513          	mv	a0,a1
    800074cc:	00060593          	mv	a1,a2
    800074d0:	0006861b          	sext.w	a2,a3
    800074d4:	00002097          	auipc	ra,0x2
    800074d8:	c60080e7          	jalr	-928(ra) # 80009134 <__memmove>
    800074dc:	00813083          	ld	ra,8(sp)
    800074e0:	00013403          	ld	s0,0(sp)
    800074e4:	00000513          	li	a0,0
    800074e8:	01010113          	addi	sp,sp,16
    800074ec:	00008067          	ret
    800074f0:	00003517          	auipc	a0,0x3
    800074f4:	2f050513          	addi	a0,a0,752 # 8000a7e0 <CONSOLE_STATUS+0x7d0>
    800074f8:	00001097          	auipc	ra,0x1
    800074fc:	934080e7          	jalr	-1740(ra) # 80007e2c <panic>

0000000080007500 <either_copyin>:
    80007500:	ff010113          	addi	sp,sp,-16
    80007504:	00813023          	sd	s0,0(sp)
    80007508:	00113423          	sd	ra,8(sp)
    8000750c:	01010413          	addi	s0,sp,16
    80007510:	02059463          	bnez	a1,80007538 <either_copyin+0x38>
    80007514:	00060593          	mv	a1,a2
    80007518:	0006861b          	sext.w	a2,a3
    8000751c:	00002097          	auipc	ra,0x2
    80007520:	c18080e7          	jalr	-1000(ra) # 80009134 <__memmove>
    80007524:	00813083          	ld	ra,8(sp)
    80007528:	00013403          	ld	s0,0(sp)
    8000752c:	00000513          	li	a0,0
    80007530:	01010113          	addi	sp,sp,16
    80007534:	00008067          	ret
    80007538:	00003517          	auipc	a0,0x3
    8000753c:	2d050513          	addi	a0,a0,720 # 8000a808 <CONSOLE_STATUS+0x7f8>
    80007540:	00001097          	auipc	ra,0x1
    80007544:	8ec080e7          	jalr	-1812(ra) # 80007e2c <panic>

0000000080007548 <trapinit>:
    80007548:	ff010113          	addi	sp,sp,-16
    8000754c:	00813423          	sd	s0,8(sp)
    80007550:	01010413          	addi	s0,sp,16
    80007554:	00813403          	ld	s0,8(sp)
    80007558:	00003597          	auipc	a1,0x3
    8000755c:	2d858593          	addi	a1,a1,728 # 8000a830 <CONSOLE_STATUS+0x820>
    80007560:	00007517          	auipc	a0,0x7
    80007564:	b0050513          	addi	a0,a0,-1280 # 8000e060 <tickslock>
    80007568:	01010113          	addi	sp,sp,16
    8000756c:	00001317          	auipc	t1,0x1
    80007570:	5cc30067          	jr	1484(t1) # 80008b38 <initlock>

0000000080007574 <trapinithart>:
    80007574:	ff010113          	addi	sp,sp,-16
    80007578:	00813423          	sd	s0,8(sp)
    8000757c:	01010413          	addi	s0,sp,16
    80007580:	00000797          	auipc	a5,0x0
    80007584:	30078793          	addi	a5,a5,768 # 80007880 <kernelvec>
    80007588:	10579073          	csrw	stvec,a5
    8000758c:	00813403          	ld	s0,8(sp)
    80007590:	01010113          	addi	sp,sp,16
    80007594:	00008067          	ret

0000000080007598 <usertrap>:
    80007598:	ff010113          	addi	sp,sp,-16
    8000759c:	00813423          	sd	s0,8(sp)
    800075a0:	01010413          	addi	s0,sp,16
    800075a4:	00813403          	ld	s0,8(sp)
    800075a8:	01010113          	addi	sp,sp,16
    800075ac:	00008067          	ret

00000000800075b0 <usertrapret>:
    800075b0:	ff010113          	addi	sp,sp,-16
    800075b4:	00813423          	sd	s0,8(sp)
    800075b8:	01010413          	addi	s0,sp,16
    800075bc:	00813403          	ld	s0,8(sp)
    800075c0:	01010113          	addi	sp,sp,16
    800075c4:	00008067          	ret

00000000800075c8 <kerneltrap>:
    800075c8:	fe010113          	addi	sp,sp,-32
    800075cc:	00813823          	sd	s0,16(sp)
    800075d0:	00113c23          	sd	ra,24(sp)
    800075d4:	00913423          	sd	s1,8(sp)
    800075d8:	02010413          	addi	s0,sp,32
    800075dc:	142025f3          	csrr	a1,scause
    800075e0:	100027f3          	csrr	a5,sstatus
    800075e4:	0027f793          	andi	a5,a5,2
    800075e8:	10079c63          	bnez	a5,80007700 <kerneltrap+0x138>
    800075ec:	142027f3          	csrr	a5,scause
    800075f0:	0207ce63          	bltz	a5,8000762c <kerneltrap+0x64>
    800075f4:	00003517          	auipc	a0,0x3
    800075f8:	28450513          	addi	a0,a0,644 # 8000a878 <CONSOLE_STATUS+0x868>
    800075fc:	00001097          	auipc	ra,0x1
    80007600:	88c080e7          	jalr	-1908(ra) # 80007e88 <__printf>
    80007604:	141025f3          	csrr	a1,sepc
    80007608:	14302673          	csrr	a2,stval
    8000760c:	00003517          	auipc	a0,0x3
    80007610:	27c50513          	addi	a0,a0,636 # 8000a888 <CONSOLE_STATUS+0x878>
    80007614:	00001097          	auipc	ra,0x1
    80007618:	874080e7          	jalr	-1932(ra) # 80007e88 <__printf>
    8000761c:	00003517          	auipc	a0,0x3
    80007620:	28450513          	addi	a0,a0,644 # 8000a8a0 <CONSOLE_STATUS+0x890>
    80007624:	00001097          	auipc	ra,0x1
    80007628:	808080e7          	jalr	-2040(ra) # 80007e2c <panic>
    8000762c:	0ff7f713          	andi	a4,a5,255
    80007630:	00900693          	li	a3,9
    80007634:	04d70063          	beq	a4,a3,80007674 <kerneltrap+0xac>
    80007638:	fff00713          	li	a4,-1
    8000763c:	03f71713          	slli	a4,a4,0x3f
    80007640:	00170713          	addi	a4,a4,1
    80007644:	fae798e3          	bne	a5,a4,800075f4 <kerneltrap+0x2c>
    80007648:	00000097          	auipc	ra,0x0
    8000764c:	e00080e7          	jalr	-512(ra) # 80007448 <cpuid>
    80007650:	06050663          	beqz	a0,800076bc <kerneltrap+0xf4>
    80007654:	144027f3          	csrr	a5,sip
    80007658:	ffd7f793          	andi	a5,a5,-3
    8000765c:	14479073          	csrw	sip,a5
    80007660:	01813083          	ld	ra,24(sp)
    80007664:	01013403          	ld	s0,16(sp)
    80007668:	00813483          	ld	s1,8(sp)
    8000766c:	02010113          	addi	sp,sp,32
    80007670:	00008067          	ret
    80007674:	00000097          	auipc	ra,0x0
    80007678:	3d0080e7          	jalr	976(ra) # 80007a44 <plic_claim>
    8000767c:	00a00793          	li	a5,10
    80007680:	00050493          	mv	s1,a0
    80007684:	06f50863          	beq	a0,a5,800076f4 <kerneltrap+0x12c>
    80007688:	fc050ce3          	beqz	a0,80007660 <kerneltrap+0x98>
    8000768c:	00050593          	mv	a1,a0
    80007690:	00003517          	auipc	a0,0x3
    80007694:	1c850513          	addi	a0,a0,456 # 8000a858 <CONSOLE_STATUS+0x848>
    80007698:	00000097          	auipc	ra,0x0
    8000769c:	7f0080e7          	jalr	2032(ra) # 80007e88 <__printf>
    800076a0:	01013403          	ld	s0,16(sp)
    800076a4:	01813083          	ld	ra,24(sp)
    800076a8:	00048513          	mv	a0,s1
    800076ac:	00813483          	ld	s1,8(sp)
    800076b0:	02010113          	addi	sp,sp,32
    800076b4:	00000317          	auipc	t1,0x0
    800076b8:	3c830067          	jr	968(t1) # 80007a7c <plic_complete>
    800076bc:	00007517          	auipc	a0,0x7
    800076c0:	9a450513          	addi	a0,a0,-1628 # 8000e060 <tickslock>
    800076c4:	00001097          	auipc	ra,0x1
    800076c8:	498080e7          	jalr	1176(ra) # 80008b5c <acquire>
    800076cc:	00005717          	auipc	a4,0x5
    800076d0:	7e870713          	addi	a4,a4,2024 # 8000ceb4 <ticks>
    800076d4:	00072783          	lw	a5,0(a4)
    800076d8:	00007517          	auipc	a0,0x7
    800076dc:	98850513          	addi	a0,a0,-1656 # 8000e060 <tickslock>
    800076e0:	0017879b          	addiw	a5,a5,1
    800076e4:	00f72023          	sw	a5,0(a4)
    800076e8:	00001097          	auipc	ra,0x1
    800076ec:	540080e7          	jalr	1344(ra) # 80008c28 <release>
    800076f0:	f65ff06f          	j	80007654 <kerneltrap+0x8c>
    800076f4:	00001097          	auipc	ra,0x1
    800076f8:	09c080e7          	jalr	156(ra) # 80008790 <uartintr>
    800076fc:	fa5ff06f          	j	800076a0 <kerneltrap+0xd8>
    80007700:	00003517          	auipc	a0,0x3
    80007704:	13850513          	addi	a0,a0,312 # 8000a838 <CONSOLE_STATUS+0x828>
    80007708:	00000097          	auipc	ra,0x0
    8000770c:	724080e7          	jalr	1828(ra) # 80007e2c <panic>

0000000080007710 <clockintr>:
    80007710:	fe010113          	addi	sp,sp,-32
    80007714:	00813823          	sd	s0,16(sp)
    80007718:	00913423          	sd	s1,8(sp)
    8000771c:	00113c23          	sd	ra,24(sp)
    80007720:	02010413          	addi	s0,sp,32
    80007724:	00007497          	auipc	s1,0x7
    80007728:	93c48493          	addi	s1,s1,-1732 # 8000e060 <tickslock>
    8000772c:	00048513          	mv	a0,s1
    80007730:	00001097          	auipc	ra,0x1
    80007734:	42c080e7          	jalr	1068(ra) # 80008b5c <acquire>
    80007738:	00005717          	auipc	a4,0x5
    8000773c:	77c70713          	addi	a4,a4,1916 # 8000ceb4 <ticks>
    80007740:	00072783          	lw	a5,0(a4)
    80007744:	01013403          	ld	s0,16(sp)
    80007748:	01813083          	ld	ra,24(sp)
    8000774c:	00048513          	mv	a0,s1
    80007750:	0017879b          	addiw	a5,a5,1
    80007754:	00813483          	ld	s1,8(sp)
    80007758:	00f72023          	sw	a5,0(a4)
    8000775c:	02010113          	addi	sp,sp,32
    80007760:	00001317          	auipc	t1,0x1
    80007764:	4c830067          	jr	1224(t1) # 80008c28 <release>

0000000080007768 <devintr>:
    80007768:	142027f3          	csrr	a5,scause
    8000776c:	00000513          	li	a0,0
    80007770:	0007c463          	bltz	a5,80007778 <devintr+0x10>
    80007774:	00008067          	ret
    80007778:	fe010113          	addi	sp,sp,-32
    8000777c:	00813823          	sd	s0,16(sp)
    80007780:	00113c23          	sd	ra,24(sp)
    80007784:	00913423          	sd	s1,8(sp)
    80007788:	02010413          	addi	s0,sp,32
    8000778c:	0ff7f713          	andi	a4,a5,255
    80007790:	00900693          	li	a3,9
    80007794:	04d70c63          	beq	a4,a3,800077ec <devintr+0x84>
    80007798:	fff00713          	li	a4,-1
    8000779c:	03f71713          	slli	a4,a4,0x3f
    800077a0:	00170713          	addi	a4,a4,1
    800077a4:	00e78c63          	beq	a5,a4,800077bc <devintr+0x54>
    800077a8:	01813083          	ld	ra,24(sp)
    800077ac:	01013403          	ld	s0,16(sp)
    800077b0:	00813483          	ld	s1,8(sp)
    800077b4:	02010113          	addi	sp,sp,32
    800077b8:	00008067          	ret
    800077bc:	00000097          	auipc	ra,0x0
    800077c0:	c8c080e7          	jalr	-884(ra) # 80007448 <cpuid>
    800077c4:	06050663          	beqz	a0,80007830 <devintr+0xc8>
    800077c8:	144027f3          	csrr	a5,sip
    800077cc:	ffd7f793          	andi	a5,a5,-3
    800077d0:	14479073          	csrw	sip,a5
    800077d4:	01813083          	ld	ra,24(sp)
    800077d8:	01013403          	ld	s0,16(sp)
    800077dc:	00813483          	ld	s1,8(sp)
    800077e0:	00200513          	li	a0,2
    800077e4:	02010113          	addi	sp,sp,32
    800077e8:	00008067          	ret
    800077ec:	00000097          	auipc	ra,0x0
    800077f0:	258080e7          	jalr	600(ra) # 80007a44 <plic_claim>
    800077f4:	00a00793          	li	a5,10
    800077f8:	00050493          	mv	s1,a0
    800077fc:	06f50663          	beq	a0,a5,80007868 <devintr+0x100>
    80007800:	00100513          	li	a0,1
    80007804:	fa0482e3          	beqz	s1,800077a8 <devintr+0x40>
    80007808:	00048593          	mv	a1,s1
    8000780c:	00003517          	auipc	a0,0x3
    80007810:	04c50513          	addi	a0,a0,76 # 8000a858 <CONSOLE_STATUS+0x848>
    80007814:	00000097          	auipc	ra,0x0
    80007818:	674080e7          	jalr	1652(ra) # 80007e88 <__printf>
    8000781c:	00048513          	mv	a0,s1
    80007820:	00000097          	auipc	ra,0x0
    80007824:	25c080e7          	jalr	604(ra) # 80007a7c <plic_complete>
    80007828:	00100513          	li	a0,1
    8000782c:	f7dff06f          	j	800077a8 <devintr+0x40>
    80007830:	00007517          	auipc	a0,0x7
    80007834:	83050513          	addi	a0,a0,-2000 # 8000e060 <tickslock>
    80007838:	00001097          	auipc	ra,0x1
    8000783c:	324080e7          	jalr	804(ra) # 80008b5c <acquire>
    80007840:	00005717          	auipc	a4,0x5
    80007844:	67470713          	addi	a4,a4,1652 # 8000ceb4 <ticks>
    80007848:	00072783          	lw	a5,0(a4)
    8000784c:	00007517          	auipc	a0,0x7
    80007850:	81450513          	addi	a0,a0,-2028 # 8000e060 <tickslock>
    80007854:	0017879b          	addiw	a5,a5,1
    80007858:	00f72023          	sw	a5,0(a4)
    8000785c:	00001097          	auipc	ra,0x1
    80007860:	3cc080e7          	jalr	972(ra) # 80008c28 <release>
    80007864:	f65ff06f          	j	800077c8 <devintr+0x60>
    80007868:	00001097          	auipc	ra,0x1
    8000786c:	f28080e7          	jalr	-216(ra) # 80008790 <uartintr>
    80007870:	fadff06f          	j	8000781c <devintr+0xb4>
	...

0000000080007880 <kernelvec>:
    80007880:	f0010113          	addi	sp,sp,-256
    80007884:	00113023          	sd	ra,0(sp)
    80007888:	00213423          	sd	sp,8(sp)
    8000788c:	00313823          	sd	gp,16(sp)
    80007890:	00413c23          	sd	tp,24(sp)
    80007894:	02513023          	sd	t0,32(sp)
    80007898:	02613423          	sd	t1,40(sp)
    8000789c:	02713823          	sd	t2,48(sp)
    800078a0:	02813c23          	sd	s0,56(sp)
    800078a4:	04913023          	sd	s1,64(sp)
    800078a8:	04a13423          	sd	a0,72(sp)
    800078ac:	04b13823          	sd	a1,80(sp)
    800078b0:	04c13c23          	sd	a2,88(sp)
    800078b4:	06d13023          	sd	a3,96(sp)
    800078b8:	06e13423          	sd	a4,104(sp)
    800078bc:	06f13823          	sd	a5,112(sp)
    800078c0:	07013c23          	sd	a6,120(sp)
    800078c4:	09113023          	sd	a7,128(sp)
    800078c8:	09213423          	sd	s2,136(sp)
    800078cc:	09313823          	sd	s3,144(sp)
    800078d0:	09413c23          	sd	s4,152(sp)
    800078d4:	0b513023          	sd	s5,160(sp)
    800078d8:	0b613423          	sd	s6,168(sp)
    800078dc:	0b713823          	sd	s7,176(sp)
    800078e0:	0b813c23          	sd	s8,184(sp)
    800078e4:	0d913023          	sd	s9,192(sp)
    800078e8:	0da13423          	sd	s10,200(sp)
    800078ec:	0db13823          	sd	s11,208(sp)
    800078f0:	0dc13c23          	sd	t3,216(sp)
    800078f4:	0fd13023          	sd	t4,224(sp)
    800078f8:	0fe13423          	sd	t5,232(sp)
    800078fc:	0ff13823          	sd	t6,240(sp)
    80007900:	cc9ff0ef          	jal	ra,800075c8 <kerneltrap>
    80007904:	00013083          	ld	ra,0(sp)
    80007908:	00813103          	ld	sp,8(sp)
    8000790c:	01013183          	ld	gp,16(sp)
    80007910:	02013283          	ld	t0,32(sp)
    80007914:	02813303          	ld	t1,40(sp)
    80007918:	03013383          	ld	t2,48(sp)
    8000791c:	03813403          	ld	s0,56(sp)
    80007920:	04013483          	ld	s1,64(sp)
    80007924:	04813503          	ld	a0,72(sp)
    80007928:	05013583          	ld	a1,80(sp)
    8000792c:	05813603          	ld	a2,88(sp)
    80007930:	06013683          	ld	a3,96(sp)
    80007934:	06813703          	ld	a4,104(sp)
    80007938:	07013783          	ld	a5,112(sp)
    8000793c:	07813803          	ld	a6,120(sp)
    80007940:	08013883          	ld	a7,128(sp)
    80007944:	08813903          	ld	s2,136(sp)
    80007948:	09013983          	ld	s3,144(sp)
    8000794c:	09813a03          	ld	s4,152(sp)
    80007950:	0a013a83          	ld	s5,160(sp)
    80007954:	0a813b03          	ld	s6,168(sp)
    80007958:	0b013b83          	ld	s7,176(sp)
    8000795c:	0b813c03          	ld	s8,184(sp)
    80007960:	0c013c83          	ld	s9,192(sp)
    80007964:	0c813d03          	ld	s10,200(sp)
    80007968:	0d013d83          	ld	s11,208(sp)
    8000796c:	0d813e03          	ld	t3,216(sp)
    80007970:	0e013e83          	ld	t4,224(sp)
    80007974:	0e813f03          	ld	t5,232(sp)
    80007978:	0f013f83          	ld	t6,240(sp)
    8000797c:	10010113          	addi	sp,sp,256
    80007980:	10200073          	sret
    80007984:	00000013          	nop
    80007988:	00000013          	nop
    8000798c:	00000013          	nop

0000000080007990 <timervec>:
    80007990:	34051573          	csrrw	a0,mscratch,a0
    80007994:	00b53023          	sd	a1,0(a0)
    80007998:	00c53423          	sd	a2,8(a0)
    8000799c:	00d53823          	sd	a3,16(a0)
    800079a0:	01853583          	ld	a1,24(a0)
    800079a4:	02053603          	ld	a2,32(a0)
    800079a8:	0005b683          	ld	a3,0(a1)
    800079ac:	00c686b3          	add	a3,a3,a2
    800079b0:	00d5b023          	sd	a3,0(a1)
    800079b4:	00200593          	li	a1,2
    800079b8:	14459073          	csrw	sip,a1
    800079bc:	01053683          	ld	a3,16(a0)
    800079c0:	00853603          	ld	a2,8(a0)
    800079c4:	00053583          	ld	a1,0(a0)
    800079c8:	34051573          	csrrw	a0,mscratch,a0
    800079cc:	30200073          	mret

00000000800079d0 <plicinit>:
    800079d0:	ff010113          	addi	sp,sp,-16
    800079d4:	00813423          	sd	s0,8(sp)
    800079d8:	01010413          	addi	s0,sp,16
    800079dc:	00813403          	ld	s0,8(sp)
    800079e0:	0c0007b7          	lui	a5,0xc000
    800079e4:	00100713          	li	a4,1
    800079e8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800079ec:	00e7a223          	sw	a4,4(a5)
    800079f0:	01010113          	addi	sp,sp,16
    800079f4:	00008067          	ret

00000000800079f8 <plicinithart>:
    800079f8:	ff010113          	addi	sp,sp,-16
    800079fc:	00813023          	sd	s0,0(sp)
    80007a00:	00113423          	sd	ra,8(sp)
    80007a04:	01010413          	addi	s0,sp,16
    80007a08:	00000097          	auipc	ra,0x0
    80007a0c:	a40080e7          	jalr	-1472(ra) # 80007448 <cpuid>
    80007a10:	0085171b          	slliw	a4,a0,0x8
    80007a14:	0c0027b7          	lui	a5,0xc002
    80007a18:	00e787b3          	add	a5,a5,a4
    80007a1c:	40200713          	li	a4,1026
    80007a20:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007a24:	00813083          	ld	ra,8(sp)
    80007a28:	00013403          	ld	s0,0(sp)
    80007a2c:	00d5151b          	slliw	a0,a0,0xd
    80007a30:	0c2017b7          	lui	a5,0xc201
    80007a34:	00a78533          	add	a0,a5,a0
    80007a38:	00052023          	sw	zero,0(a0)
    80007a3c:	01010113          	addi	sp,sp,16
    80007a40:	00008067          	ret

0000000080007a44 <plic_claim>:
    80007a44:	ff010113          	addi	sp,sp,-16
    80007a48:	00813023          	sd	s0,0(sp)
    80007a4c:	00113423          	sd	ra,8(sp)
    80007a50:	01010413          	addi	s0,sp,16
    80007a54:	00000097          	auipc	ra,0x0
    80007a58:	9f4080e7          	jalr	-1548(ra) # 80007448 <cpuid>
    80007a5c:	00813083          	ld	ra,8(sp)
    80007a60:	00013403          	ld	s0,0(sp)
    80007a64:	00d5151b          	slliw	a0,a0,0xd
    80007a68:	0c2017b7          	lui	a5,0xc201
    80007a6c:	00a78533          	add	a0,a5,a0
    80007a70:	00452503          	lw	a0,4(a0)
    80007a74:	01010113          	addi	sp,sp,16
    80007a78:	00008067          	ret

0000000080007a7c <plic_complete>:
    80007a7c:	fe010113          	addi	sp,sp,-32
    80007a80:	00813823          	sd	s0,16(sp)
    80007a84:	00913423          	sd	s1,8(sp)
    80007a88:	00113c23          	sd	ra,24(sp)
    80007a8c:	02010413          	addi	s0,sp,32
    80007a90:	00050493          	mv	s1,a0
    80007a94:	00000097          	auipc	ra,0x0
    80007a98:	9b4080e7          	jalr	-1612(ra) # 80007448 <cpuid>
    80007a9c:	01813083          	ld	ra,24(sp)
    80007aa0:	01013403          	ld	s0,16(sp)
    80007aa4:	00d5179b          	slliw	a5,a0,0xd
    80007aa8:	0c201737          	lui	a4,0xc201
    80007aac:	00f707b3          	add	a5,a4,a5
    80007ab0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007ab4:	00813483          	ld	s1,8(sp)
    80007ab8:	02010113          	addi	sp,sp,32
    80007abc:	00008067          	ret

0000000080007ac0 <consolewrite>:
    80007ac0:	fb010113          	addi	sp,sp,-80
    80007ac4:	04813023          	sd	s0,64(sp)
    80007ac8:	04113423          	sd	ra,72(sp)
    80007acc:	02913c23          	sd	s1,56(sp)
    80007ad0:	03213823          	sd	s2,48(sp)
    80007ad4:	03313423          	sd	s3,40(sp)
    80007ad8:	03413023          	sd	s4,32(sp)
    80007adc:	01513c23          	sd	s5,24(sp)
    80007ae0:	05010413          	addi	s0,sp,80
    80007ae4:	06c05c63          	blez	a2,80007b5c <consolewrite+0x9c>
    80007ae8:	00060993          	mv	s3,a2
    80007aec:	00050a13          	mv	s4,a0
    80007af0:	00058493          	mv	s1,a1
    80007af4:	00000913          	li	s2,0
    80007af8:	fff00a93          	li	s5,-1
    80007afc:	01c0006f          	j	80007b18 <consolewrite+0x58>
    80007b00:	fbf44503          	lbu	a0,-65(s0)
    80007b04:	0019091b          	addiw	s2,s2,1
    80007b08:	00148493          	addi	s1,s1,1
    80007b0c:	00001097          	auipc	ra,0x1
    80007b10:	a9c080e7          	jalr	-1380(ra) # 800085a8 <uartputc>
    80007b14:	03298063          	beq	s3,s2,80007b34 <consolewrite+0x74>
    80007b18:	00048613          	mv	a2,s1
    80007b1c:	00100693          	li	a3,1
    80007b20:	000a0593          	mv	a1,s4
    80007b24:	fbf40513          	addi	a0,s0,-65
    80007b28:	00000097          	auipc	ra,0x0
    80007b2c:	9d8080e7          	jalr	-1576(ra) # 80007500 <either_copyin>
    80007b30:	fd5518e3          	bne	a0,s5,80007b00 <consolewrite+0x40>
    80007b34:	04813083          	ld	ra,72(sp)
    80007b38:	04013403          	ld	s0,64(sp)
    80007b3c:	03813483          	ld	s1,56(sp)
    80007b40:	02813983          	ld	s3,40(sp)
    80007b44:	02013a03          	ld	s4,32(sp)
    80007b48:	01813a83          	ld	s5,24(sp)
    80007b4c:	00090513          	mv	a0,s2
    80007b50:	03013903          	ld	s2,48(sp)
    80007b54:	05010113          	addi	sp,sp,80
    80007b58:	00008067          	ret
    80007b5c:	00000913          	li	s2,0
    80007b60:	fd5ff06f          	j	80007b34 <consolewrite+0x74>

0000000080007b64 <consoleread>:
    80007b64:	f9010113          	addi	sp,sp,-112
    80007b68:	06813023          	sd	s0,96(sp)
    80007b6c:	04913c23          	sd	s1,88(sp)
    80007b70:	05213823          	sd	s2,80(sp)
    80007b74:	05313423          	sd	s3,72(sp)
    80007b78:	05413023          	sd	s4,64(sp)
    80007b7c:	03513c23          	sd	s5,56(sp)
    80007b80:	03613823          	sd	s6,48(sp)
    80007b84:	03713423          	sd	s7,40(sp)
    80007b88:	03813023          	sd	s8,32(sp)
    80007b8c:	06113423          	sd	ra,104(sp)
    80007b90:	01913c23          	sd	s9,24(sp)
    80007b94:	07010413          	addi	s0,sp,112
    80007b98:	00060b93          	mv	s7,a2
    80007b9c:	00050913          	mv	s2,a0
    80007ba0:	00058c13          	mv	s8,a1
    80007ba4:	00060b1b          	sext.w	s6,a2
    80007ba8:	00006497          	auipc	s1,0x6
    80007bac:	4e048493          	addi	s1,s1,1248 # 8000e088 <cons>
    80007bb0:	00400993          	li	s3,4
    80007bb4:	fff00a13          	li	s4,-1
    80007bb8:	00a00a93          	li	s5,10
    80007bbc:	05705e63          	blez	s7,80007c18 <consoleread+0xb4>
    80007bc0:	09c4a703          	lw	a4,156(s1)
    80007bc4:	0984a783          	lw	a5,152(s1)
    80007bc8:	0007071b          	sext.w	a4,a4
    80007bcc:	08e78463          	beq	a5,a4,80007c54 <consoleread+0xf0>
    80007bd0:	07f7f713          	andi	a4,a5,127
    80007bd4:	00e48733          	add	a4,s1,a4
    80007bd8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80007bdc:	0017869b          	addiw	a3,a5,1
    80007be0:	08d4ac23          	sw	a3,152(s1)
    80007be4:	00070c9b          	sext.w	s9,a4
    80007be8:	0b370663          	beq	a4,s3,80007c94 <consoleread+0x130>
    80007bec:	00100693          	li	a3,1
    80007bf0:	f9f40613          	addi	a2,s0,-97
    80007bf4:	000c0593          	mv	a1,s8
    80007bf8:	00090513          	mv	a0,s2
    80007bfc:	f8e40fa3          	sb	a4,-97(s0)
    80007c00:	00000097          	auipc	ra,0x0
    80007c04:	8b4080e7          	jalr	-1868(ra) # 800074b4 <either_copyout>
    80007c08:	01450863          	beq	a0,s4,80007c18 <consoleread+0xb4>
    80007c0c:	001c0c13          	addi	s8,s8,1
    80007c10:	fffb8b9b          	addiw	s7,s7,-1
    80007c14:	fb5c94e3          	bne	s9,s5,80007bbc <consoleread+0x58>
    80007c18:	000b851b          	sext.w	a0,s7
    80007c1c:	06813083          	ld	ra,104(sp)
    80007c20:	06013403          	ld	s0,96(sp)
    80007c24:	05813483          	ld	s1,88(sp)
    80007c28:	05013903          	ld	s2,80(sp)
    80007c2c:	04813983          	ld	s3,72(sp)
    80007c30:	04013a03          	ld	s4,64(sp)
    80007c34:	03813a83          	ld	s5,56(sp)
    80007c38:	02813b83          	ld	s7,40(sp)
    80007c3c:	02013c03          	ld	s8,32(sp)
    80007c40:	01813c83          	ld	s9,24(sp)
    80007c44:	40ab053b          	subw	a0,s6,a0
    80007c48:	03013b03          	ld	s6,48(sp)
    80007c4c:	07010113          	addi	sp,sp,112
    80007c50:	00008067          	ret
    80007c54:	00001097          	auipc	ra,0x1
    80007c58:	1d8080e7          	jalr	472(ra) # 80008e2c <push_on>
    80007c5c:	0984a703          	lw	a4,152(s1)
    80007c60:	09c4a783          	lw	a5,156(s1)
    80007c64:	0007879b          	sext.w	a5,a5
    80007c68:	fef70ce3          	beq	a4,a5,80007c60 <consoleread+0xfc>
    80007c6c:	00001097          	auipc	ra,0x1
    80007c70:	234080e7          	jalr	564(ra) # 80008ea0 <pop_on>
    80007c74:	0984a783          	lw	a5,152(s1)
    80007c78:	07f7f713          	andi	a4,a5,127
    80007c7c:	00e48733          	add	a4,s1,a4
    80007c80:	01874703          	lbu	a4,24(a4)
    80007c84:	0017869b          	addiw	a3,a5,1
    80007c88:	08d4ac23          	sw	a3,152(s1)
    80007c8c:	00070c9b          	sext.w	s9,a4
    80007c90:	f5371ee3          	bne	a4,s3,80007bec <consoleread+0x88>
    80007c94:	000b851b          	sext.w	a0,s7
    80007c98:	f96bf2e3          	bgeu	s7,s6,80007c1c <consoleread+0xb8>
    80007c9c:	08f4ac23          	sw	a5,152(s1)
    80007ca0:	f7dff06f          	j	80007c1c <consoleread+0xb8>

0000000080007ca4 <consputc>:
    80007ca4:	10000793          	li	a5,256
    80007ca8:	00f50663          	beq	a0,a5,80007cb4 <consputc+0x10>
    80007cac:	00001317          	auipc	t1,0x1
    80007cb0:	9f430067          	jr	-1548(t1) # 800086a0 <uartputc_sync>
    80007cb4:	ff010113          	addi	sp,sp,-16
    80007cb8:	00113423          	sd	ra,8(sp)
    80007cbc:	00813023          	sd	s0,0(sp)
    80007cc0:	01010413          	addi	s0,sp,16
    80007cc4:	00800513          	li	a0,8
    80007cc8:	00001097          	auipc	ra,0x1
    80007ccc:	9d8080e7          	jalr	-1576(ra) # 800086a0 <uartputc_sync>
    80007cd0:	02000513          	li	a0,32
    80007cd4:	00001097          	auipc	ra,0x1
    80007cd8:	9cc080e7          	jalr	-1588(ra) # 800086a0 <uartputc_sync>
    80007cdc:	00013403          	ld	s0,0(sp)
    80007ce0:	00813083          	ld	ra,8(sp)
    80007ce4:	00800513          	li	a0,8
    80007ce8:	01010113          	addi	sp,sp,16
    80007cec:	00001317          	auipc	t1,0x1
    80007cf0:	9b430067          	jr	-1612(t1) # 800086a0 <uartputc_sync>

0000000080007cf4 <consoleintr>:
    80007cf4:	fe010113          	addi	sp,sp,-32
    80007cf8:	00813823          	sd	s0,16(sp)
    80007cfc:	00913423          	sd	s1,8(sp)
    80007d00:	01213023          	sd	s2,0(sp)
    80007d04:	00113c23          	sd	ra,24(sp)
    80007d08:	02010413          	addi	s0,sp,32
    80007d0c:	00006917          	auipc	s2,0x6
    80007d10:	37c90913          	addi	s2,s2,892 # 8000e088 <cons>
    80007d14:	00050493          	mv	s1,a0
    80007d18:	00090513          	mv	a0,s2
    80007d1c:	00001097          	auipc	ra,0x1
    80007d20:	e40080e7          	jalr	-448(ra) # 80008b5c <acquire>
    80007d24:	02048c63          	beqz	s1,80007d5c <consoleintr+0x68>
    80007d28:	0a092783          	lw	a5,160(s2)
    80007d2c:	09892703          	lw	a4,152(s2)
    80007d30:	07f00693          	li	a3,127
    80007d34:	40e7873b          	subw	a4,a5,a4
    80007d38:	02e6e263          	bltu	a3,a4,80007d5c <consoleintr+0x68>
    80007d3c:	00d00713          	li	a4,13
    80007d40:	04e48063          	beq	s1,a4,80007d80 <consoleintr+0x8c>
    80007d44:	07f7f713          	andi	a4,a5,127
    80007d48:	00e90733          	add	a4,s2,a4
    80007d4c:	0017879b          	addiw	a5,a5,1
    80007d50:	0af92023          	sw	a5,160(s2)
    80007d54:	00970c23          	sb	s1,24(a4)
    80007d58:	08f92e23          	sw	a5,156(s2)
    80007d5c:	01013403          	ld	s0,16(sp)
    80007d60:	01813083          	ld	ra,24(sp)
    80007d64:	00813483          	ld	s1,8(sp)
    80007d68:	00013903          	ld	s2,0(sp)
    80007d6c:	00006517          	auipc	a0,0x6
    80007d70:	31c50513          	addi	a0,a0,796 # 8000e088 <cons>
    80007d74:	02010113          	addi	sp,sp,32
    80007d78:	00001317          	auipc	t1,0x1
    80007d7c:	eb030067          	jr	-336(t1) # 80008c28 <release>
    80007d80:	00a00493          	li	s1,10
    80007d84:	fc1ff06f          	j	80007d44 <consoleintr+0x50>

0000000080007d88 <consoleinit>:
    80007d88:	fe010113          	addi	sp,sp,-32
    80007d8c:	00113c23          	sd	ra,24(sp)
    80007d90:	00813823          	sd	s0,16(sp)
    80007d94:	00913423          	sd	s1,8(sp)
    80007d98:	02010413          	addi	s0,sp,32
    80007d9c:	00006497          	auipc	s1,0x6
    80007da0:	2ec48493          	addi	s1,s1,748 # 8000e088 <cons>
    80007da4:	00048513          	mv	a0,s1
    80007da8:	00003597          	auipc	a1,0x3
    80007dac:	b0858593          	addi	a1,a1,-1272 # 8000a8b0 <CONSOLE_STATUS+0x8a0>
    80007db0:	00001097          	auipc	ra,0x1
    80007db4:	d88080e7          	jalr	-632(ra) # 80008b38 <initlock>
    80007db8:	00000097          	auipc	ra,0x0
    80007dbc:	7ac080e7          	jalr	1964(ra) # 80008564 <uartinit>
    80007dc0:	01813083          	ld	ra,24(sp)
    80007dc4:	01013403          	ld	s0,16(sp)
    80007dc8:	00000797          	auipc	a5,0x0
    80007dcc:	d9c78793          	addi	a5,a5,-612 # 80007b64 <consoleread>
    80007dd0:	0af4bc23          	sd	a5,184(s1)
    80007dd4:	00000797          	auipc	a5,0x0
    80007dd8:	cec78793          	addi	a5,a5,-788 # 80007ac0 <consolewrite>
    80007ddc:	0cf4b023          	sd	a5,192(s1)
    80007de0:	00813483          	ld	s1,8(sp)
    80007de4:	02010113          	addi	sp,sp,32
    80007de8:	00008067          	ret

0000000080007dec <console_read>:
    80007dec:	ff010113          	addi	sp,sp,-16
    80007df0:	00813423          	sd	s0,8(sp)
    80007df4:	01010413          	addi	s0,sp,16
    80007df8:	00813403          	ld	s0,8(sp)
    80007dfc:	00006317          	auipc	t1,0x6
    80007e00:	34433303          	ld	t1,836(t1) # 8000e140 <devsw+0x10>
    80007e04:	01010113          	addi	sp,sp,16
    80007e08:	00030067          	jr	t1

0000000080007e0c <console_write>:
    80007e0c:	ff010113          	addi	sp,sp,-16
    80007e10:	00813423          	sd	s0,8(sp)
    80007e14:	01010413          	addi	s0,sp,16
    80007e18:	00813403          	ld	s0,8(sp)
    80007e1c:	00006317          	auipc	t1,0x6
    80007e20:	32c33303          	ld	t1,812(t1) # 8000e148 <devsw+0x18>
    80007e24:	01010113          	addi	sp,sp,16
    80007e28:	00030067          	jr	t1

0000000080007e2c <panic>:
    80007e2c:	fe010113          	addi	sp,sp,-32
    80007e30:	00113c23          	sd	ra,24(sp)
    80007e34:	00813823          	sd	s0,16(sp)
    80007e38:	00913423          	sd	s1,8(sp)
    80007e3c:	02010413          	addi	s0,sp,32
    80007e40:	00050493          	mv	s1,a0
    80007e44:	00003517          	auipc	a0,0x3
    80007e48:	a7450513          	addi	a0,a0,-1420 # 8000a8b8 <CONSOLE_STATUS+0x8a8>
    80007e4c:	00006797          	auipc	a5,0x6
    80007e50:	3807ae23          	sw	zero,924(a5) # 8000e1e8 <pr+0x18>
    80007e54:	00000097          	auipc	ra,0x0
    80007e58:	034080e7          	jalr	52(ra) # 80007e88 <__printf>
    80007e5c:	00048513          	mv	a0,s1
    80007e60:	00000097          	auipc	ra,0x0
    80007e64:	028080e7          	jalr	40(ra) # 80007e88 <__printf>
    80007e68:	00002517          	auipc	a0,0x2
    80007e6c:	4e850513          	addi	a0,a0,1256 # 8000a350 <CONSOLE_STATUS+0x340>
    80007e70:	00000097          	auipc	ra,0x0
    80007e74:	018080e7          	jalr	24(ra) # 80007e88 <__printf>
    80007e78:	00100793          	li	a5,1
    80007e7c:	00005717          	auipc	a4,0x5
    80007e80:	02f72e23          	sw	a5,60(a4) # 8000ceb8 <panicked>
    80007e84:	0000006f          	j	80007e84 <panic+0x58>

0000000080007e88 <__printf>:
    80007e88:	f3010113          	addi	sp,sp,-208
    80007e8c:	08813023          	sd	s0,128(sp)
    80007e90:	07313423          	sd	s3,104(sp)
    80007e94:	09010413          	addi	s0,sp,144
    80007e98:	05813023          	sd	s8,64(sp)
    80007e9c:	08113423          	sd	ra,136(sp)
    80007ea0:	06913c23          	sd	s1,120(sp)
    80007ea4:	07213823          	sd	s2,112(sp)
    80007ea8:	07413023          	sd	s4,96(sp)
    80007eac:	05513c23          	sd	s5,88(sp)
    80007eb0:	05613823          	sd	s6,80(sp)
    80007eb4:	05713423          	sd	s7,72(sp)
    80007eb8:	03913c23          	sd	s9,56(sp)
    80007ebc:	03a13823          	sd	s10,48(sp)
    80007ec0:	03b13423          	sd	s11,40(sp)
    80007ec4:	00006317          	auipc	t1,0x6
    80007ec8:	30c30313          	addi	t1,t1,780 # 8000e1d0 <pr>
    80007ecc:	01832c03          	lw	s8,24(t1)
    80007ed0:	00b43423          	sd	a1,8(s0)
    80007ed4:	00c43823          	sd	a2,16(s0)
    80007ed8:	00d43c23          	sd	a3,24(s0)
    80007edc:	02e43023          	sd	a4,32(s0)
    80007ee0:	02f43423          	sd	a5,40(s0)
    80007ee4:	03043823          	sd	a6,48(s0)
    80007ee8:	03143c23          	sd	a7,56(s0)
    80007eec:	00050993          	mv	s3,a0
    80007ef0:	4a0c1663          	bnez	s8,8000839c <__printf+0x514>
    80007ef4:	60098c63          	beqz	s3,8000850c <__printf+0x684>
    80007ef8:	0009c503          	lbu	a0,0(s3)
    80007efc:	00840793          	addi	a5,s0,8
    80007f00:	f6f43c23          	sd	a5,-136(s0)
    80007f04:	00000493          	li	s1,0
    80007f08:	22050063          	beqz	a0,80008128 <__printf+0x2a0>
    80007f0c:	00002a37          	lui	s4,0x2
    80007f10:	00018ab7          	lui	s5,0x18
    80007f14:	000f4b37          	lui	s6,0xf4
    80007f18:	00989bb7          	lui	s7,0x989
    80007f1c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007f20:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007f24:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007f28:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007f2c:	00148c9b          	addiw	s9,s1,1
    80007f30:	02500793          	li	a5,37
    80007f34:	01998933          	add	s2,s3,s9
    80007f38:	38f51263          	bne	a0,a5,800082bc <__printf+0x434>
    80007f3c:	00094783          	lbu	a5,0(s2)
    80007f40:	00078c9b          	sext.w	s9,a5
    80007f44:	1e078263          	beqz	a5,80008128 <__printf+0x2a0>
    80007f48:	0024849b          	addiw	s1,s1,2
    80007f4c:	07000713          	li	a4,112
    80007f50:	00998933          	add	s2,s3,s1
    80007f54:	38e78a63          	beq	a5,a4,800082e8 <__printf+0x460>
    80007f58:	20f76863          	bltu	a4,a5,80008168 <__printf+0x2e0>
    80007f5c:	42a78863          	beq	a5,a0,8000838c <__printf+0x504>
    80007f60:	06400713          	li	a4,100
    80007f64:	40e79663          	bne	a5,a4,80008370 <__printf+0x4e8>
    80007f68:	f7843783          	ld	a5,-136(s0)
    80007f6c:	0007a603          	lw	a2,0(a5)
    80007f70:	00878793          	addi	a5,a5,8
    80007f74:	f6f43c23          	sd	a5,-136(s0)
    80007f78:	42064a63          	bltz	a2,800083ac <__printf+0x524>
    80007f7c:	00a00713          	li	a4,10
    80007f80:	02e677bb          	remuw	a5,a2,a4
    80007f84:	00003d97          	auipc	s11,0x3
    80007f88:	95cd8d93          	addi	s11,s11,-1700 # 8000a8e0 <digits>
    80007f8c:	00900593          	li	a1,9
    80007f90:	0006051b          	sext.w	a0,a2
    80007f94:	00000c93          	li	s9,0
    80007f98:	02079793          	slli	a5,a5,0x20
    80007f9c:	0207d793          	srli	a5,a5,0x20
    80007fa0:	00fd87b3          	add	a5,s11,a5
    80007fa4:	0007c783          	lbu	a5,0(a5)
    80007fa8:	02e656bb          	divuw	a3,a2,a4
    80007fac:	f8f40023          	sb	a5,-128(s0)
    80007fb0:	14c5d863          	bge	a1,a2,80008100 <__printf+0x278>
    80007fb4:	06300593          	li	a1,99
    80007fb8:	00100c93          	li	s9,1
    80007fbc:	02e6f7bb          	remuw	a5,a3,a4
    80007fc0:	02079793          	slli	a5,a5,0x20
    80007fc4:	0207d793          	srli	a5,a5,0x20
    80007fc8:	00fd87b3          	add	a5,s11,a5
    80007fcc:	0007c783          	lbu	a5,0(a5)
    80007fd0:	02e6d73b          	divuw	a4,a3,a4
    80007fd4:	f8f400a3          	sb	a5,-127(s0)
    80007fd8:	12a5f463          	bgeu	a1,a0,80008100 <__printf+0x278>
    80007fdc:	00a00693          	li	a3,10
    80007fe0:	00900593          	li	a1,9
    80007fe4:	02d777bb          	remuw	a5,a4,a3
    80007fe8:	02079793          	slli	a5,a5,0x20
    80007fec:	0207d793          	srli	a5,a5,0x20
    80007ff0:	00fd87b3          	add	a5,s11,a5
    80007ff4:	0007c503          	lbu	a0,0(a5)
    80007ff8:	02d757bb          	divuw	a5,a4,a3
    80007ffc:	f8a40123          	sb	a0,-126(s0)
    80008000:	48e5f263          	bgeu	a1,a4,80008484 <__printf+0x5fc>
    80008004:	06300513          	li	a0,99
    80008008:	02d7f5bb          	remuw	a1,a5,a3
    8000800c:	02059593          	slli	a1,a1,0x20
    80008010:	0205d593          	srli	a1,a1,0x20
    80008014:	00bd85b3          	add	a1,s11,a1
    80008018:	0005c583          	lbu	a1,0(a1)
    8000801c:	02d7d7bb          	divuw	a5,a5,a3
    80008020:	f8b401a3          	sb	a1,-125(s0)
    80008024:	48e57263          	bgeu	a0,a4,800084a8 <__printf+0x620>
    80008028:	3e700513          	li	a0,999
    8000802c:	02d7f5bb          	remuw	a1,a5,a3
    80008030:	02059593          	slli	a1,a1,0x20
    80008034:	0205d593          	srli	a1,a1,0x20
    80008038:	00bd85b3          	add	a1,s11,a1
    8000803c:	0005c583          	lbu	a1,0(a1)
    80008040:	02d7d7bb          	divuw	a5,a5,a3
    80008044:	f8b40223          	sb	a1,-124(s0)
    80008048:	46e57663          	bgeu	a0,a4,800084b4 <__printf+0x62c>
    8000804c:	02d7f5bb          	remuw	a1,a5,a3
    80008050:	02059593          	slli	a1,a1,0x20
    80008054:	0205d593          	srli	a1,a1,0x20
    80008058:	00bd85b3          	add	a1,s11,a1
    8000805c:	0005c583          	lbu	a1,0(a1)
    80008060:	02d7d7bb          	divuw	a5,a5,a3
    80008064:	f8b402a3          	sb	a1,-123(s0)
    80008068:	46ea7863          	bgeu	s4,a4,800084d8 <__printf+0x650>
    8000806c:	02d7f5bb          	remuw	a1,a5,a3
    80008070:	02059593          	slli	a1,a1,0x20
    80008074:	0205d593          	srli	a1,a1,0x20
    80008078:	00bd85b3          	add	a1,s11,a1
    8000807c:	0005c583          	lbu	a1,0(a1)
    80008080:	02d7d7bb          	divuw	a5,a5,a3
    80008084:	f8b40323          	sb	a1,-122(s0)
    80008088:	3eeaf863          	bgeu	s5,a4,80008478 <__printf+0x5f0>
    8000808c:	02d7f5bb          	remuw	a1,a5,a3
    80008090:	02059593          	slli	a1,a1,0x20
    80008094:	0205d593          	srli	a1,a1,0x20
    80008098:	00bd85b3          	add	a1,s11,a1
    8000809c:	0005c583          	lbu	a1,0(a1)
    800080a0:	02d7d7bb          	divuw	a5,a5,a3
    800080a4:	f8b403a3          	sb	a1,-121(s0)
    800080a8:	42eb7e63          	bgeu	s6,a4,800084e4 <__printf+0x65c>
    800080ac:	02d7f5bb          	remuw	a1,a5,a3
    800080b0:	02059593          	slli	a1,a1,0x20
    800080b4:	0205d593          	srli	a1,a1,0x20
    800080b8:	00bd85b3          	add	a1,s11,a1
    800080bc:	0005c583          	lbu	a1,0(a1)
    800080c0:	02d7d7bb          	divuw	a5,a5,a3
    800080c4:	f8b40423          	sb	a1,-120(s0)
    800080c8:	42ebfc63          	bgeu	s7,a4,80008500 <__printf+0x678>
    800080cc:	02079793          	slli	a5,a5,0x20
    800080d0:	0207d793          	srli	a5,a5,0x20
    800080d4:	00fd8db3          	add	s11,s11,a5
    800080d8:	000dc703          	lbu	a4,0(s11)
    800080dc:	00a00793          	li	a5,10
    800080e0:	00900c93          	li	s9,9
    800080e4:	f8e404a3          	sb	a4,-119(s0)
    800080e8:	00065c63          	bgez	a2,80008100 <__printf+0x278>
    800080ec:	f9040713          	addi	a4,s0,-112
    800080f0:	00f70733          	add	a4,a4,a5
    800080f4:	02d00693          	li	a3,45
    800080f8:	fed70823          	sb	a3,-16(a4)
    800080fc:	00078c93          	mv	s9,a5
    80008100:	f8040793          	addi	a5,s0,-128
    80008104:	01978cb3          	add	s9,a5,s9
    80008108:	f7f40d13          	addi	s10,s0,-129
    8000810c:	000cc503          	lbu	a0,0(s9)
    80008110:	fffc8c93          	addi	s9,s9,-1
    80008114:	00000097          	auipc	ra,0x0
    80008118:	b90080e7          	jalr	-1136(ra) # 80007ca4 <consputc>
    8000811c:	ffac98e3          	bne	s9,s10,8000810c <__printf+0x284>
    80008120:	00094503          	lbu	a0,0(s2)
    80008124:	e00514e3          	bnez	a0,80007f2c <__printf+0xa4>
    80008128:	1a0c1663          	bnez	s8,800082d4 <__printf+0x44c>
    8000812c:	08813083          	ld	ra,136(sp)
    80008130:	08013403          	ld	s0,128(sp)
    80008134:	07813483          	ld	s1,120(sp)
    80008138:	07013903          	ld	s2,112(sp)
    8000813c:	06813983          	ld	s3,104(sp)
    80008140:	06013a03          	ld	s4,96(sp)
    80008144:	05813a83          	ld	s5,88(sp)
    80008148:	05013b03          	ld	s6,80(sp)
    8000814c:	04813b83          	ld	s7,72(sp)
    80008150:	04013c03          	ld	s8,64(sp)
    80008154:	03813c83          	ld	s9,56(sp)
    80008158:	03013d03          	ld	s10,48(sp)
    8000815c:	02813d83          	ld	s11,40(sp)
    80008160:	0d010113          	addi	sp,sp,208
    80008164:	00008067          	ret
    80008168:	07300713          	li	a4,115
    8000816c:	1ce78a63          	beq	a5,a4,80008340 <__printf+0x4b8>
    80008170:	07800713          	li	a4,120
    80008174:	1ee79e63          	bne	a5,a4,80008370 <__printf+0x4e8>
    80008178:	f7843783          	ld	a5,-136(s0)
    8000817c:	0007a703          	lw	a4,0(a5)
    80008180:	00878793          	addi	a5,a5,8
    80008184:	f6f43c23          	sd	a5,-136(s0)
    80008188:	28074263          	bltz	a4,8000840c <__printf+0x584>
    8000818c:	00002d97          	auipc	s11,0x2
    80008190:	754d8d93          	addi	s11,s11,1876 # 8000a8e0 <digits>
    80008194:	00f77793          	andi	a5,a4,15
    80008198:	00fd87b3          	add	a5,s11,a5
    8000819c:	0007c683          	lbu	a3,0(a5)
    800081a0:	00f00613          	li	a2,15
    800081a4:	0007079b          	sext.w	a5,a4
    800081a8:	f8d40023          	sb	a3,-128(s0)
    800081ac:	0047559b          	srliw	a1,a4,0x4
    800081b0:	0047569b          	srliw	a3,a4,0x4
    800081b4:	00000c93          	li	s9,0
    800081b8:	0ee65063          	bge	a2,a4,80008298 <__printf+0x410>
    800081bc:	00f6f693          	andi	a3,a3,15
    800081c0:	00dd86b3          	add	a3,s11,a3
    800081c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800081c8:	0087d79b          	srliw	a5,a5,0x8
    800081cc:	00100c93          	li	s9,1
    800081d0:	f8d400a3          	sb	a3,-127(s0)
    800081d4:	0cb67263          	bgeu	a2,a1,80008298 <__printf+0x410>
    800081d8:	00f7f693          	andi	a3,a5,15
    800081dc:	00dd86b3          	add	a3,s11,a3
    800081e0:	0006c583          	lbu	a1,0(a3)
    800081e4:	00f00613          	li	a2,15
    800081e8:	0047d69b          	srliw	a3,a5,0x4
    800081ec:	f8b40123          	sb	a1,-126(s0)
    800081f0:	0047d593          	srli	a1,a5,0x4
    800081f4:	28f67e63          	bgeu	a2,a5,80008490 <__printf+0x608>
    800081f8:	00f6f693          	andi	a3,a3,15
    800081fc:	00dd86b3          	add	a3,s11,a3
    80008200:	0006c503          	lbu	a0,0(a3)
    80008204:	0087d813          	srli	a6,a5,0x8
    80008208:	0087d69b          	srliw	a3,a5,0x8
    8000820c:	f8a401a3          	sb	a0,-125(s0)
    80008210:	28b67663          	bgeu	a2,a1,8000849c <__printf+0x614>
    80008214:	00f6f693          	andi	a3,a3,15
    80008218:	00dd86b3          	add	a3,s11,a3
    8000821c:	0006c583          	lbu	a1,0(a3)
    80008220:	00c7d513          	srli	a0,a5,0xc
    80008224:	00c7d69b          	srliw	a3,a5,0xc
    80008228:	f8b40223          	sb	a1,-124(s0)
    8000822c:	29067a63          	bgeu	a2,a6,800084c0 <__printf+0x638>
    80008230:	00f6f693          	andi	a3,a3,15
    80008234:	00dd86b3          	add	a3,s11,a3
    80008238:	0006c583          	lbu	a1,0(a3)
    8000823c:	0107d813          	srli	a6,a5,0x10
    80008240:	0107d69b          	srliw	a3,a5,0x10
    80008244:	f8b402a3          	sb	a1,-123(s0)
    80008248:	28a67263          	bgeu	a2,a0,800084cc <__printf+0x644>
    8000824c:	00f6f693          	andi	a3,a3,15
    80008250:	00dd86b3          	add	a3,s11,a3
    80008254:	0006c683          	lbu	a3,0(a3)
    80008258:	0147d79b          	srliw	a5,a5,0x14
    8000825c:	f8d40323          	sb	a3,-122(s0)
    80008260:	21067663          	bgeu	a2,a6,8000846c <__printf+0x5e4>
    80008264:	02079793          	slli	a5,a5,0x20
    80008268:	0207d793          	srli	a5,a5,0x20
    8000826c:	00fd8db3          	add	s11,s11,a5
    80008270:	000dc683          	lbu	a3,0(s11)
    80008274:	00800793          	li	a5,8
    80008278:	00700c93          	li	s9,7
    8000827c:	f8d403a3          	sb	a3,-121(s0)
    80008280:	00075c63          	bgez	a4,80008298 <__printf+0x410>
    80008284:	f9040713          	addi	a4,s0,-112
    80008288:	00f70733          	add	a4,a4,a5
    8000828c:	02d00693          	li	a3,45
    80008290:	fed70823          	sb	a3,-16(a4)
    80008294:	00078c93          	mv	s9,a5
    80008298:	f8040793          	addi	a5,s0,-128
    8000829c:	01978cb3          	add	s9,a5,s9
    800082a0:	f7f40d13          	addi	s10,s0,-129
    800082a4:	000cc503          	lbu	a0,0(s9)
    800082a8:	fffc8c93          	addi	s9,s9,-1
    800082ac:	00000097          	auipc	ra,0x0
    800082b0:	9f8080e7          	jalr	-1544(ra) # 80007ca4 <consputc>
    800082b4:	ff9d18e3          	bne	s10,s9,800082a4 <__printf+0x41c>
    800082b8:	0100006f          	j	800082c8 <__printf+0x440>
    800082bc:	00000097          	auipc	ra,0x0
    800082c0:	9e8080e7          	jalr	-1560(ra) # 80007ca4 <consputc>
    800082c4:	000c8493          	mv	s1,s9
    800082c8:	00094503          	lbu	a0,0(s2)
    800082cc:	c60510e3          	bnez	a0,80007f2c <__printf+0xa4>
    800082d0:	e40c0ee3          	beqz	s8,8000812c <__printf+0x2a4>
    800082d4:	00006517          	auipc	a0,0x6
    800082d8:	efc50513          	addi	a0,a0,-260 # 8000e1d0 <pr>
    800082dc:	00001097          	auipc	ra,0x1
    800082e0:	94c080e7          	jalr	-1716(ra) # 80008c28 <release>
    800082e4:	e49ff06f          	j	8000812c <__printf+0x2a4>
    800082e8:	f7843783          	ld	a5,-136(s0)
    800082ec:	03000513          	li	a0,48
    800082f0:	01000d13          	li	s10,16
    800082f4:	00878713          	addi	a4,a5,8
    800082f8:	0007bc83          	ld	s9,0(a5)
    800082fc:	f6e43c23          	sd	a4,-136(s0)
    80008300:	00000097          	auipc	ra,0x0
    80008304:	9a4080e7          	jalr	-1628(ra) # 80007ca4 <consputc>
    80008308:	07800513          	li	a0,120
    8000830c:	00000097          	auipc	ra,0x0
    80008310:	998080e7          	jalr	-1640(ra) # 80007ca4 <consputc>
    80008314:	00002d97          	auipc	s11,0x2
    80008318:	5ccd8d93          	addi	s11,s11,1484 # 8000a8e0 <digits>
    8000831c:	03ccd793          	srli	a5,s9,0x3c
    80008320:	00fd87b3          	add	a5,s11,a5
    80008324:	0007c503          	lbu	a0,0(a5)
    80008328:	fffd0d1b          	addiw	s10,s10,-1
    8000832c:	004c9c93          	slli	s9,s9,0x4
    80008330:	00000097          	auipc	ra,0x0
    80008334:	974080e7          	jalr	-1676(ra) # 80007ca4 <consputc>
    80008338:	fe0d12e3          	bnez	s10,8000831c <__printf+0x494>
    8000833c:	f8dff06f          	j	800082c8 <__printf+0x440>
    80008340:	f7843783          	ld	a5,-136(s0)
    80008344:	0007bc83          	ld	s9,0(a5)
    80008348:	00878793          	addi	a5,a5,8
    8000834c:	f6f43c23          	sd	a5,-136(s0)
    80008350:	000c9a63          	bnez	s9,80008364 <__printf+0x4dc>
    80008354:	1080006f          	j	8000845c <__printf+0x5d4>
    80008358:	001c8c93          	addi	s9,s9,1
    8000835c:	00000097          	auipc	ra,0x0
    80008360:	948080e7          	jalr	-1720(ra) # 80007ca4 <consputc>
    80008364:	000cc503          	lbu	a0,0(s9)
    80008368:	fe0518e3          	bnez	a0,80008358 <__printf+0x4d0>
    8000836c:	f5dff06f          	j	800082c8 <__printf+0x440>
    80008370:	02500513          	li	a0,37
    80008374:	00000097          	auipc	ra,0x0
    80008378:	930080e7          	jalr	-1744(ra) # 80007ca4 <consputc>
    8000837c:	000c8513          	mv	a0,s9
    80008380:	00000097          	auipc	ra,0x0
    80008384:	924080e7          	jalr	-1756(ra) # 80007ca4 <consputc>
    80008388:	f41ff06f          	j	800082c8 <__printf+0x440>
    8000838c:	02500513          	li	a0,37
    80008390:	00000097          	auipc	ra,0x0
    80008394:	914080e7          	jalr	-1772(ra) # 80007ca4 <consputc>
    80008398:	f31ff06f          	j	800082c8 <__printf+0x440>
    8000839c:	00030513          	mv	a0,t1
    800083a0:	00000097          	auipc	ra,0x0
    800083a4:	7bc080e7          	jalr	1980(ra) # 80008b5c <acquire>
    800083a8:	b4dff06f          	j	80007ef4 <__printf+0x6c>
    800083ac:	40c0053b          	negw	a0,a2
    800083b0:	00a00713          	li	a4,10
    800083b4:	02e576bb          	remuw	a3,a0,a4
    800083b8:	00002d97          	auipc	s11,0x2
    800083bc:	528d8d93          	addi	s11,s11,1320 # 8000a8e0 <digits>
    800083c0:	ff700593          	li	a1,-9
    800083c4:	02069693          	slli	a3,a3,0x20
    800083c8:	0206d693          	srli	a3,a3,0x20
    800083cc:	00dd86b3          	add	a3,s11,a3
    800083d0:	0006c683          	lbu	a3,0(a3)
    800083d4:	02e557bb          	divuw	a5,a0,a4
    800083d8:	f8d40023          	sb	a3,-128(s0)
    800083dc:	10b65e63          	bge	a2,a1,800084f8 <__printf+0x670>
    800083e0:	06300593          	li	a1,99
    800083e4:	02e7f6bb          	remuw	a3,a5,a4
    800083e8:	02069693          	slli	a3,a3,0x20
    800083ec:	0206d693          	srli	a3,a3,0x20
    800083f0:	00dd86b3          	add	a3,s11,a3
    800083f4:	0006c683          	lbu	a3,0(a3)
    800083f8:	02e7d73b          	divuw	a4,a5,a4
    800083fc:	00200793          	li	a5,2
    80008400:	f8d400a3          	sb	a3,-127(s0)
    80008404:	bca5ece3          	bltu	a1,a0,80007fdc <__printf+0x154>
    80008408:	ce5ff06f          	j	800080ec <__printf+0x264>
    8000840c:	40e007bb          	negw	a5,a4
    80008410:	00002d97          	auipc	s11,0x2
    80008414:	4d0d8d93          	addi	s11,s11,1232 # 8000a8e0 <digits>
    80008418:	00f7f693          	andi	a3,a5,15
    8000841c:	00dd86b3          	add	a3,s11,a3
    80008420:	0006c583          	lbu	a1,0(a3)
    80008424:	ff100613          	li	a2,-15
    80008428:	0047d69b          	srliw	a3,a5,0x4
    8000842c:	f8b40023          	sb	a1,-128(s0)
    80008430:	0047d59b          	srliw	a1,a5,0x4
    80008434:	0ac75e63          	bge	a4,a2,800084f0 <__printf+0x668>
    80008438:	00f6f693          	andi	a3,a3,15
    8000843c:	00dd86b3          	add	a3,s11,a3
    80008440:	0006c603          	lbu	a2,0(a3)
    80008444:	00f00693          	li	a3,15
    80008448:	0087d79b          	srliw	a5,a5,0x8
    8000844c:	f8c400a3          	sb	a2,-127(s0)
    80008450:	d8b6e4e3          	bltu	a3,a1,800081d8 <__printf+0x350>
    80008454:	00200793          	li	a5,2
    80008458:	e2dff06f          	j	80008284 <__printf+0x3fc>
    8000845c:	00002c97          	auipc	s9,0x2
    80008460:	464c8c93          	addi	s9,s9,1124 # 8000a8c0 <CONSOLE_STATUS+0x8b0>
    80008464:	02800513          	li	a0,40
    80008468:	ef1ff06f          	j	80008358 <__printf+0x4d0>
    8000846c:	00700793          	li	a5,7
    80008470:	00600c93          	li	s9,6
    80008474:	e0dff06f          	j	80008280 <__printf+0x3f8>
    80008478:	00700793          	li	a5,7
    8000847c:	00600c93          	li	s9,6
    80008480:	c69ff06f          	j	800080e8 <__printf+0x260>
    80008484:	00300793          	li	a5,3
    80008488:	00200c93          	li	s9,2
    8000848c:	c5dff06f          	j	800080e8 <__printf+0x260>
    80008490:	00300793          	li	a5,3
    80008494:	00200c93          	li	s9,2
    80008498:	de9ff06f          	j	80008280 <__printf+0x3f8>
    8000849c:	00400793          	li	a5,4
    800084a0:	00300c93          	li	s9,3
    800084a4:	dddff06f          	j	80008280 <__printf+0x3f8>
    800084a8:	00400793          	li	a5,4
    800084ac:	00300c93          	li	s9,3
    800084b0:	c39ff06f          	j	800080e8 <__printf+0x260>
    800084b4:	00500793          	li	a5,5
    800084b8:	00400c93          	li	s9,4
    800084bc:	c2dff06f          	j	800080e8 <__printf+0x260>
    800084c0:	00500793          	li	a5,5
    800084c4:	00400c93          	li	s9,4
    800084c8:	db9ff06f          	j	80008280 <__printf+0x3f8>
    800084cc:	00600793          	li	a5,6
    800084d0:	00500c93          	li	s9,5
    800084d4:	dadff06f          	j	80008280 <__printf+0x3f8>
    800084d8:	00600793          	li	a5,6
    800084dc:	00500c93          	li	s9,5
    800084e0:	c09ff06f          	j	800080e8 <__printf+0x260>
    800084e4:	00800793          	li	a5,8
    800084e8:	00700c93          	li	s9,7
    800084ec:	bfdff06f          	j	800080e8 <__printf+0x260>
    800084f0:	00100793          	li	a5,1
    800084f4:	d91ff06f          	j	80008284 <__printf+0x3fc>
    800084f8:	00100793          	li	a5,1
    800084fc:	bf1ff06f          	j	800080ec <__printf+0x264>
    80008500:	00900793          	li	a5,9
    80008504:	00800c93          	li	s9,8
    80008508:	be1ff06f          	j	800080e8 <__printf+0x260>
    8000850c:	00002517          	auipc	a0,0x2
    80008510:	3bc50513          	addi	a0,a0,956 # 8000a8c8 <CONSOLE_STATUS+0x8b8>
    80008514:	00000097          	auipc	ra,0x0
    80008518:	918080e7          	jalr	-1768(ra) # 80007e2c <panic>

000000008000851c <printfinit>:
    8000851c:	fe010113          	addi	sp,sp,-32
    80008520:	00813823          	sd	s0,16(sp)
    80008524:	00913423          	sd	s1,8(sp)
    80008528:	00113c23          	sd	ra,24(sp)
    8000852c:	02010413          	addi	s0,sp,32
    80008530:	00006497          	auipc	s1,0x6
    80008534:	ca048493          	addi	s1,s1,-864 # 8000e1d0 <pr>
    80008538:	00048513          	mv	a0,s1
    8000853c:	00002597          	auipc	a1,0x2
    80008540:	39c58593          	addi	a1,a1,924 # 8000a8d8 <CONSOLE_STATUS+0x8c8>
    80008544:	00000097          	auipc	ra,0x0
    80008548:	5f4080e7          	jalr	1524(ra) # 80008b38 <initlock>
    8000854c:	01813083          	ld	ra,24(sp)
    80008550:	01013403          	ld	s0,16(sp)
    80008554:	0004ac23          	sw	zero,24(s1)
    80008558:	00813483          	ld	s1,8(sp)
    8000855c:	02010113          	addi	sp,sp,32
    80008560:	00008067          	ret

0000000080008564 <uartinit>:
    80008564:	ff010113          	addi	sp,sp,-16
    80008568:	00813423          	sd	s0,8(sp)
    8000856c:	01010413          	addi	s0,sp,16
    80008570:	100007b7          	lui	a5,0x10000
    80008574:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008578:	f8000713          	li	a4,-128
    8000857c:	00e781a3          	sb	a4,3(a5)
    80008580:	00300713          	li	a4,3
    80008584:	00e78023          	sb	a4,0(a5)
    80008588:	000780a3          	sb	zero,1(a5)
    8000858c:	00e781a3          	sb	a4,3(a5)
    80008590:	00700693          	li	a3,7
    80008594:	00d78123          	sb	a3,2(a5)
    80008598:	00e780a3          	sb	a4,1(a5)
    8000859c:	00813403          	ld	s0,8(sp)
    800085a0:	01010113          	addi	sp,sp,16
    800085a4:	00008067          	ret

00000000800085a8 <uartputc>:
    800085a8:	00005797          	auipc	a5,0x5
    800085ac:	9107a783          	lw	a5,-1776(a5) # 8000ceb8 <panicked>
    800085b0:	00078463          	beqz	a5,800085b8 <uartputc+0x10>
    800085b4:	0000006f          	j	800085b4 <uartputc+0xc>
    800085b8:	fd010113          	addi	sp,sp,-48
    800085bc:	02813023          	sd	s0,32(sp)
    800085c0:	00913c23          	sd	s1,24(sp)
    800085c4:	01213823          	sd	s2,16(sp)
    800085c8:	01313423          	sd	s3,8(sp)
    800085cc:	02113423          	sd	ra,40(sp)
    800085d0:	03010413          	addi	s0,sp,48
    800085d4:	00005917          	auipc	s2,0x5
    800085d8:	8ec90913          	addi	s2,s2,-1812 # 8000cec0 <uart_tx_r>
    800085dc:	00093783          	ld	a5,0(s2)
    800085e0:	00005497          	auipc	s1,0x5
    800085e4:	8e848493          	addi	s1,s1,-1816 # 8000cec8 <uart_tx_w>
    800085e8:	0004b703          	ld	a4,0(s1)
    800085ec:	02078693          	addi	a3,a5,32
    800085f0:	00050993          	mv	s3,a0
    800085f4:	02e69c63          	bne	a3,a4,8000862c <uartputc+0x84>
    800085f8:	00001097          	auipc	ra,0x1
    800085fc:	834080e7          	jalr	-1996(ra) # 80008e2c <push_on>
    80008600:	00093783          	ld	a5,0(s2)
    80008604:	0004b703          	ld	a4,0(s1)
    80008608:	02078793          	addi	a5,a5,32
    8000860c:	00e79463          	bne	a5,a4,80008614 <uartputc+0x6c>
    80008610:	0000006f          	j	80008610 <uartputc+0x68>
    80008614:	00001097          	auipc	ra,0x1
    80008618:	88c080e7          	jalr	-1908(ra) # 80008ea0 <pop_on>
    8000861c:	00093783          	ld	a5,0(s2)
    80008620:	0004b703          	ld	a4,0(s1)
    80008624:	02078693          	addi	a3,a5,32
    80008628:	fce688e3          	beq	a3,a4,800085f8 <uartputc+0x50>
    8000862c:	01f77693          	andi	a3,a4,31
    80008630:	00006597          	auipc	a1,0x6
    80008634:	bc058593          	addi	a1,a1,-1088 # 8000e1f0 <uart_tx_buf>
    80008638:	00d586b3          	add	a3,a1,a3
    8000863c:	00170713          	addi	a4,a4,1
    80008640:	01368023          	sb	s3,0(a3)
    80008644:	00e4b023          	sd	a4,0(s1)
    80008648:	10000637          	lui	a2,0x10000
    8000864c:	02f71063          	bne	a4,a5,8000866c <uartputc+0xc4>
    80008650:	0340006f          	j	80008684 <uartputc+0xdc>
    80008654:	00074703          	lbu	a4,0(a4)
    80008658:	00f93023          	sd	a5,0(s2)
    8000865c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008660:	00093783          	ld	a5,0(s2)
    80008664:	0004b703          	ld	a4,0(s1)
    80008668:	00f70e63          	beq	a4,a5,80008684 <uartputc+0xdc>
    8000866c:	00564683          	lbu	a3,5(a2)
    80008670:	01f7f713          	andi	a4,a5,31
    80008674:	00e58733          	add	a4,a1,a4
    80008678:	0206f693          	andi	a3,a3,32
    8000867c:	00178793          	addi	a5,a5,1
    80008680:	fc069ae3          	bnez	a3,80008654 <uartputc+0xac>
    80008684:	02813083          	ld	ra,40(sp)
    80008688:	02013403          	ld	s0,32(sp)
    8000868c:	01813483          	ld	s1,24(sp)
    80008690:	01013903          	ld	s2,16(sp)
    80008694:	00813983          	ld	s3,8(sp)
    80008698:	03010113          	addi	sp,sp,48
    8000869c:	00008067          	ret

00000000800086a0 <uartputc_sync>:
    800086a0:	ff010113          	addi	sp,sp,-16
    800086a4:	00813423          	sd	s0,8(sp)
    800086a8:	01010413          	addi	s0,sp,16
    800086ac:	00005717          	auipc	a4,0x5
    800086b0:	80c72703          	lw	a4,-2036(a4) # 8000ceb8 <panicked>
    800086b4:	02071663          	bnez	a4,800086e0 <uartputc_sync+0x40>
    800086b8:	00050793          	mv	a5,a0
    800086bc:	100006b7          	lui	a3,0x10000
    800086c0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800086c4:	02077713          	andi	a4,a4,32
    800086c8:	fe070ce3          	beqz	a4,800086c0 <uartputc_sync+0x20>
    800086cc:	0ff7f793          	andi	a5,a5,255
    800086d0:	00f68023          	sb	a5,0(a3)
    800086d4:	00813403          	ld	s0,8(sp)
    800086d8:	01010113          	addi	sp,sp,16
    800086dc:	00008067          	ret
    800086e0:	0000006f          	j	800086e0 <uartputc_sync+0x40>

00000000800086e4 <uartstart>:
    800086e4:	ff010113          	addi	sp,sp,-16
    800086e8:	00813423          	sd	s0,8(sp)
    800086ec:	01010413          	addi	s0,sp,16
    800086f0:	00004617          	auipc	a2,0x4
    800086f4:	7d060613          	addi	a2,a2,2000 # 8000cec0 <uart_tx_r>
    800086f8:	00004517          	auipc	a0,0x4
    800086fc:	7d050513          	addi	a0,a0,2000 # 8000cec8 <uart_tx_w>
    80008700:	00063783          	ld	a5,0(a2)
    80008704:	00053703          	ld	a4,0(a0)
    80008708:	04f70263          	beq	a4,a5,8000874c <uartstart+0x68>
    8000870c:	100005b7          	lui	a1,0x10000
    80008710:	00006817          	auipc	a6,0x6
    80008714:	ae080813          	addi	a6,a6,-1312 # 8000e1f0 <uart_tx_buf>
    80008718:	01c0006f          	j	80008734 <uartstart+0x50>
    8000871c:	0006c703          	lbu	a4,0(a3)
    80008720:	00f63023          	sd	a5,0(a2)
    80008724:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008728:	00063783          	ld	a5,0(a2)
    8000872c:	00053703          	ld	a4,0(a0)
    80008730:	00f70e63          	beq	a4,a5,8000874c <uartstart+0x68>
    80008734:	01f7f713          	andi	a4,a5,31
    80008738:	00e806b3          	add	a3,a6,a4
    8000873c:	0055c703          	lbu	a4,5(a1)
    80008740:	00178793          	addi	a5,a5,1
    80008744:	02077713          	andi	a4,a4,32
    80008748:	fc071ae3          	bnez	a4,8000871c <uartstart+0x38>
    8000874c:	00813403          	ld	s0,8(sp)
    80008750:	01010113          	addi	sp,sp,16
    80008754:	00008067          	ret

0000000080008758 <uartgetc>:
    80008758:	ff010113          	addi	sp,sp,-16
    8000875c:	00813423          	sd	s0,8(sp)
    80008760:	01010413          	addi	s0,sp,16
    80008764:	10000737          	lui	a4,0x10000
    80008768:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000876c:	0017f793          	andi	a5,a5,1
    80008770:	00078c63          	beqz	a5,80008788 <uartgetc+0x30>
    80008774:	00074503          	lbu	a0,0(a4)
    80008778:	0ff57513          	andi	a0,a0,255
    8000877c:	00813403          	ld	s0,8(sp)
    80008780:	01010113          	addi	sp,sp,16
    80008784:	00008067          	ret
    80008788:	fff00513          	li	a0,-1
    8000878c:	ff1ff06f          	j	8000877c <uartgetc+0x24>

0000000080008790 <uartintr>:
    80008790:	100007b7          	lui	a5,0x10000
    80008794:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008798:	0017f793          	andi	a5,a5,1
    8000879c:	0a078463          	beqz	a5,80008844 <uartintr+0xb4>
    800087a0:	fe010113          	addi	sp,sp,-32
    800087a4:	00813823          	sd	s0,16(sp)
    800087a8:	00913423          	sd	s1,8(sp)
    800087ac:	00113c23          	sd	ra,24(sp)
    800087b0:	02010413          	addi	s0,sp,32
    800087b4:	100004b7          	lui	s1,0x10000
    800087b8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800087bc:	0ff57513          	andi	a0,a0,255
    800087c0:	fffff097          	auipc	ra,0xfffff
    800087c4:	534080e7          	jalr	1332(ra) # 80007cf4 <consoleintr>
    800087c8:	0054c783          	lbu	a5,5(s1)
    800087cc:	0017f793          	andi	a5,a5,1
    800087d0:	fe0794e3          	bnez	a5,800087b8 <uartintr+0x28>
    800087d4:	00004617          	auipc	a2,0x4
    800087d8:	6ec60613          	addi	a2,a2,1772 # 8000cec0 <uart_tx_r>
    800087dc:	00004517          	auipc	a0,0x4
    800087e0:	6ec50513          	addi	a0,a0,1772 # 8000cec8 <uart_tx_w>
    800087e4:	00063783          	ld	a5,0(a2)
    800087e8:	00053703          	ld	a4,0(a0)
    800087ec:	04f70263          	beq	a4,a5,80008830 <uartintr+0xa0>
    800087f0:	100005b7          	lui	a1,0x10000
    800087f4:	00006817          	auipc	a6,0x6
    800087f8:	9fc80813          	addi	a6,a6,-1540 # 8000e1f0 <uart_tx_buf>
    800087fc:	01c0006f          	j	80008818 <uartintr+0x88>
    80008800:	0006c703          	lbu	a4,0(a3)
    80008804:	00f63023          	sd	a5,0(a2)
    80008808:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000880c:	00063783          	ld	a5,0(a2)
    80008810:	00053703          	ld	a4,0(a0)
    80008814:	00f70e63          	beq	a4,a5,80008830 <uartintr+0xa0>
    80008818:	01f7f713          	andi	a4,a5,31
    8000881c:	00e806b3          	add	a3,a6,a4
    80008820:	0055c703          	lbu	a4,5(a1)
    80008824:	00178793          	addi	a5,a5,1
    80008828:	02077713          	andi	a4,a4,32
    8000882c:	fc071ae3          	bnez	a4,80008800 <uartintr+0x70>
    80008830:	01813083          	ld	ra,24(sp)
    80008834:	01013403          	ld	s0,16(sp)
    80008838:	00813483          	ld	s1,8(sp)
    8000883c:	02010113          	addi	sp,sp,32
    80008840:	00008067          	ret
    80008844:	00004617          	auipc	a2,0x4
    80008848:	67c60613          	addi	a2,a2,1660 # 8000cec0 <uart_tx_r>
    8000884c:	00004517          	auipc	a0,0x4
    80008850:	67c50513          	addi	a0,a0,1660 # 8000cec8 <uart_tx_w>
    80008854:	00063783          	ld	a5,0(a2)
    80008858:	00053703          	ld	a4,0(a0)
    8000885c:	04f70263          	beq	a4,a5,800088a0 <uartintr+0x110>
    80008860:	100005b7          	lui	a1,0x10000
    80008864:	00006817          	auipc	a6,0x6
    80008868:	98c80813          	addi	a6,a6,-1652 # 8000e1f0 <uart_tx_buf>
    8000886c:	01c0006f          	j	80008888 <uartintr+0xf8>
    80008870:	0006c703          	lbu	a4,0(a3)
    80008874:	00f63023          	sd	a5,0(a2)
    80008878:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000887c:	00063783          	ld	a5,0(a2)
    80008880:	00053703          	ld	a4,0(a0)
    80008884:	02f70063          	beq	a4,a5,800088a4 <uartintr+0x114>
    80008888:	01f7f713          	andi	a4,a5,31
    8000888c:	00e806b3          	add	a3,a6,a4
    80008890:	0055c703          	lbu	a4,5(a1)
    80008894:	00178793          	addi	a5,a5,1
    80008898:	02077713          	andi	a4,a4,32
    8000889c:	fc071ae3          	bnez	a4,80008870 <uartintr+0xe0>
    800088a0:	00008067          	ret
    800088a4:	00008067          	ret

00000000800088a8 <kinit>:
    800088a8:	fc010113          	addi	sp,sp,-64
    800088ac:	02913423          	sd	s1,40(sp)
    800088b0:	fffff7b7          	lui	a5,0xfffff
    800088b4:	00007497          	auipc	s1,0x7
    800088b8:	95b48493          	addi	s1,s1,-1701 # 8000f20f <end+0xfff>
    800088bc:	02813823          	sd	s0,48(sp)
    800088c0:	01313c23          	sd	s3,24(sp)
    800088c4:	00f4f4b3          	and	s1,s1,a5
    800088c8:	02113c23          	sd	ra,56(sp)
    800088cc:	03213023          	sd	s2,32(sp)
    800088d0:	01413823          	sd	s4,16(sp)
    800088d4:	01513423          	sd	s5,8(sp)
    800088d8:	04010413          	addi	s0,sp,64
    800088dc:	000017b7          	lui	a5,0x1
    800088e0:	01100993          	li	s3,17
    800088e4:	00f487b3          	add	a5,s1,a5
    800088e8:	01b99993          	slli	s3,s3,0x1b
    800088ec:	06f9e063          	bltu	s3,a5,8000894c <kinit+0xa4>
    800088f0:	00006a97          	auipc	s5,0x6
    800088f4:	920a8a93          	addi	s5,s5,-1760 # 8000e210 <end>
    800088f8:	0754ec63          	bltu	s1,s5,80008970 <kinit+0xc8>
    800088fc:	0734fa63          	bgeu	s1,s3,80008970 <kinit+0xc8>
    80008900:	00088a37          	lui	s4,0x88
    80008904:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008908:	00004917          	auipc	s2,0x4
    8000890c:	5c890913          	addi	s2,s2,1480 # 8000ced0 <kmem>
    80008910:	00ca1a13          	slli	s4,s4,0xc
    80008914:	0140006f          	j	80008928 <kinit+0x80>
    80008918:	000017b7          	lui	a5,0x1
    8000891c:	00f484b3          	add	s1,s1,a5
    80008920:	0554e863          	bltu	s1,s5,80008970 <kinit+0xc8>
    80008924:	0534f663          	bgeu	s1,s3,80008970 <kinit+0xc8>
    80008928:	00001637          	lui	a2,0x1
    8000892c:	00100593          	li	a1,1
    80008930:	00048513          	mv	a0,s1
    80008934:	00000097          	auipc	ra,0x0
    80008938:	5e4080e7          	jalr	1508(ra) # 80008f18 <__memset>
    8000893c:	00093783          	ld	a5,0(s2)
    80008940:	00f4b023          	sd	a5,0(s1)
    80008944:	00993023          	sd	s1,0(s2)
    80008948:	fd4498e3          	bne	s1,s4,80008918 <kinit+0x70>
    8000894c:	03813083          	ld	ra,56(sp)
    80008950:	03013403          	ld	s0,48(sp)
    80008954:	02813483          	ld	s1,40(sp)
    80008958:	02013903          	ld	s2,32(sp)
    8000895c:	01813983          	ld	s3,24(sp)
    80008960:	01013a03          	ld	s4,16(sp)
    80008964:	00813a83          	ld	s5,8(sp)
    80008968:	04010113          	addi	sp,sp,64
    8000896c:	00008067          	ret
    80008970:	00002517          	auipc	a0,0x2
    80008974:	f8850513          	addi	a0,a0,-120 # 8000a8f8 <digits+0x18>
    80008978:	fffff097          	auipc	ra,0xfffff
    8000897c:	4b4080e7          	jalr	1204(ra) # 80007e2c <panic>

0000000080008980 <freerange>:
    80008980:	fc010113          	addi	sp,sp,-64
    80008984:	000017b7          	lui	a5,0x1
    80008988:	02913423          	sd	s1,40(sp)
    8000898c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008990:	009504b3          	add	s1,a0,s1
    80008994:	fffff537          	lui	a0,0xfffff
    80008998:	02813823          	sd	s0,48(sp)
    8000899c:	02113c23          	sd	ra,56(sp)
    800089a0:	03213023          	sd	s2,32(sp)
    800089a4:	01313c23          	sd	s3,24(sp)
    800089a8:	01413823          	sd	s4,16(sp)
    800089ac:	01513423          	sd	s5,8(sp)
    800089b0:	01613023          	sd	s6,0(sp)
    800089b4:	04010413          	addi	s0,sp,64
    800089b8:	00a4f4b3          	and	s1,s1,a0
    800089bc:	00f487b3          	add	a5,s1,a5
    800089c0:	06f5e463          	bltu	a1,a5,80008a28 <freerange+0xa8>
    800089c4:	00006a97          	auipc	s5,0x6
    800089c8:	84ca8a93          	addi	s5,s5,-1972 # 8000e210 <end>
    800089cc:	0954e263          	bltu	s1,s5,80008a50 <freerange+0xd0>
    800089d0:	01100993          	li	s3,17
    800089d4:	01b99993          	slli	s3,s3,0x1b
    800089d8:	0734fc63          	bgeu	s1,s3,80008a50 <freerange+0xd0>
    800089dc:	00058a13          	mv	s4,a1
    800089e0:	00004917          	auipc	s2,0x4
    800089e4:	4f090913          	addi	s2,s2,1264 # 8000ced0 <kmem>
    800089e8:	00002b37          	lui	s6,0x2
    800089ec:	0140006f          	j	80008a00 <freerange+0x80>
    800089f0:	000017b7          	lui	a5,0x1
    800089f4:	00f484b3          	add	s1,s1,a5
    800089f8:	0554ec63          	bltu	s1,s5,80008a50 <freerange+0xd0>
    800089fc:	0534fa63          	bgeu	s1,s3,80008a50 <freerange+0xd0>
    80008a00:	00001637          	lui	a2,0x1
    80008a04:	00100593          	li	a1,1
    80008a08:	00048513          	mv	a0,s1
    80008a0c:	00000097          	auipc	ra,0x0
    80008a10:	50c080e7          	jalr	1292(ra) # 80008f18 <__memset>
    80008a14:	00093703          	ld	a4,0(s2)
    80008a18:	016487b3          	add	a5,s1,s6
    80008a1c:	00e4b023          	sd	a4,0(s1)
    80008a20:	00993023          	sd	s1,0(s2)
    80008a24:	fcfa76e3          	bgeu	s4,a5,800089f0 <freerange+0x70>
    80008a28:	03813083          	ld	ra,56(sp)
    80008a2c:	03013403          	ld	s0,48(sp)
    80008a30:	02813483          	ld	s1,40(sp)
    80008a34:	02013903          	ld	s2,32(sp)
    80008a38:	01813983          	ld	s3,24(sp)
    80008a3c:	01013a03          	ld	s4,16(sp)
    80008a40:	00813a83          	ld	s5,8(sp)
    80008a44:	00013b03          	ld	s6,0(sp)
    80008a48:	04010113          	addi	sp,sp,64
    80008a4c:	00008067          	ret
    80008a50:	00002517          	auipc	a0,0x2
    80008a54:	ea850513          	addi	a0,a0,-344 # 8000a8f8 <digits+0x18>
    80008a58:	fffff097          	auipc	ra,0xfffff
    80008a5c:	3d4080e7          	jalr	980(ra) # 80007e2c <panic>

0000000080008a60 <kfree>:
    80008a60:	fe010113          	addi	sp,sp,-32
    80008a64:	00813823          	sd	s0,16(sp)
    80008a68:	00113c23          	sd	ra,24(sp)
    80008a6c:	00913423          	sd	s1,8(sp)
    80008a70:	02010413          	addi	s0,sp,32
    80008a74:	03451793          	slli	a5,a0,0x34
    80008a78:	04079c63          	bnez	a5,80008ad0 <kfree+0x70>
    80008a7c:	00005797          	auipc	a5,0x5
    80008a80:	79478793          	addi	a5,a5,1940 # 8000e210 <end>
    80008a84:	00050493          	mv	s1,a0
    80008a88:	04f56463          	bltu	a0,a5,80008ad0 <kfree+0x70>
    80008a8c:	01100793          	li	a5,17
    80008a90:	01b79793          	slli	a5,a5,0x1b
    80008a94:	02f57e63          	bgeu	a0,a5,80008ad0 <kfree+0x70>
    80008a98:	00001637          	lui	a2,0x1
    80008a9c:	00100593          	li	a1,1
    80008aa0:	00000097          	auipc	ra,0x0
    80008aa4:	478080e7          	jalr	1144(ra) # 80008f18 <__memset>
    80008aa8:	00004797          	auipc	a5,0x4
    80008aac:	42878793          	addi	a5,a5,1064 # 8000ced0 <kmem>
    80008ab0:	0007b703          	ld	a4,0(a5)
    80008ab4:	01813083          	ld	ra,24(sp)
    80008ab8:	01013403          	ld	s0,16(sp)
    80008abc:	00e4b023          	sd	a4,0(s1)
    80008ac0:	0097b023          	sd	s1,0(a5)
    80008ac4:	00813483          	ld	s1,8(sp)
    80008ac8:	02010113          	addi	sp,sp,32
    80008acc:	00008067          	ret
    80008ad0:	00002517          	auipc	a0,0x2
    80008ad4:	e2850513          	addi	a0,a0,-472 # 8000a8f8 <digits+0x18>
    80008ad8:	fffff097          	auipc	ra,0xfffff
    80008adc:	354080e7          	jalr	852(ra) # 80007e2c <panic>

0000000080008ae0 <kalloc>:
    80008ae0:	fe010113          	addi	sp,sp,-32
    80008ae4:	00813823          	sd	s0,16(sp)
    80008ae8:	00913423          	sd	s1,8(sp)
    80008aec:	00113c23          	sd	ra,24(sp)
    80008af0:	02010413          	addi	s0,sp,32
    80008af4:	00004797          	auipc	a5,0x4
    80008af8:	3dc78793          	addi	a5,a5,988 # 8000ced0 <kmem>
    80008afc:	0007b483          	ld	s1,0(a5)
    80008b00:	02048063          	beqz	s1,80008b20 <kalloc+0x40>
    80008b04:	0004b703          	ld	a4,0(s1)
    80008b08:	00001637          	lui	a2,0x1
    80008b0c:	00500593          	li	a1,5
    80008b10:	00048513          	mv	a0,s1
    80008b14:	00e7b023          	sd	a4,0(a5)
    80008b18:	00000097          	auipc	ra,0x0
    80008b1c:	400080e7          	jalr	1024(ra) # 80008f18 <__memset>
    80008b20:	01813083          	ld	ra,24(sp)
    80008b24:	01013403          	ld	s0,16(sp)
    80008b28:	00048513          	mv	a0,s1
    80008b2c:	00813483          	ld	s1,8(sp)
    80008b30:	02010113          	addi	sp,sp,32
    80008b34:	00008067          	ret

0000000080008b38 <initlock>:
    80008b38:	ff010113          	addi	sp,sp,-16
    80008b3c:	00813423          	sd	s0,8(sp)
    80008b40:	01010413          	addi	s0,sp,16
    80008b44:	00813403          	ld	s0,8(sp)
    80008b48:	00b53423          	sd	a1,8(a0)
    80008b4c:	00052023          	sw	zero,0(a0)
    80008b50:	00053823          	sd	zero,16(a0)
    80008b54:	01010113          	addi	sp,sp,16
    80008b58:	00008067          	ret

0000000080008b5c <acquire>:
    80008b5c:	fe010113          	addi	sp,sp,-32
    80008b60:	00813823          	sd	s0,16(sp)
    80008b64:	00913423          	sd	s1,8(sp)
    80008b68:	00113c23          	sd	ra,24(sp)
    80008b6c:	01213023          	sd	s2,0(sp)
    80008b70:	02010413          	addi	s0,sp,32
    80008b74:	00050493          	mv	s1,a0
    80008b78:	10002973          	csrr	s2,sstatus
    80008b7c:	100027f3          	csrr	a5,sstatus
    80008b80:	ffd7f793          	andi	a5,a5,-3
    80008b84:	10079073          	csrw	sstatus,a5
    80008b88:	fffff097          	auipc	ra,0xfffff
    80008b8c:	8e0080e7          	jalr	-1824(ra) # 80007468 <mycpu>
    80008b90:	07852783          	lw	a5,120(a0)
    80008b94:	06078e63          	beqz	a5,80008c10 <acquire+0xb4>
    80008b98:	fffff097          	auipc	ra,0xfffff
    80008b9c:	8d0080e7          	jalr	-1840(ra) # 80007468 <mycpu>
    80008ba0:	07852783          	lw	a5,120(a0)
    80008ba4:	0004a703          	lw	a4,0(s1)
    80008ba8:	0017879b          	addiw	a5,a5,1
    80008bac:	06f52c23          	sw	a5,120(a0)
    80008bb0:	04071063          	bnez	a4,80008bf0 <acquire+0x94>
    80008bb4:	00100713          	li	a4,1
    80008bb8:	00070793          	mv	a5,a4
    80008bbc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008bc0:	0007879b          	sext.w	a5,a5
    80008bc4:	fe079ae3          	bnez	a5,80008bb8 <acquire+0x5c>
    80008bc8:	0ff0000f          	fence
    80008bcc:	fffff097          	auipc	ra,0xfffff
    80008bd0:	89c080e7          	jalr	-1892(ra) # 80007468 <mycpu>
    80008bd4:	01813083          	ld	ra,24(sp)
    80008bd8:	01013403          	ld	s0,16(sp)
    80008bdc:	00a4b823          	sd	a0,16(s1)
    80008be0:	00013903          	ld	s2,0(sp)
    80008be4:	00813483          	ld	s1,8(sp)
    80008be8:	02010113          	addi	sp,sp,32
    80008bec:	00008067          	ret
    80008bf0:	0104b903          	ld	s2,16(s1)
    80008bf4:	fffff097          	auipc	ra,0xfffff
    80008bf8:	874080e7          	jalr	-1932(ra) # 80007468 <mycpu>
    80008bfc:	faa91ce3          	bne	s2,a0,80008bb4 <acquire+0x58>
    80008c00:	00002517          	auipc	a0,0x2
    80008c04:	d0050513          	addi	a0,a0,-768 # 8000a900 <digits+0x20>
    80008c08:	fffff097          	auipc	ra,0xfffff
    80008c0c:	224080e7          	jalr	548(ra) # 80007e2c <panic>
    80008c10:	00195913          	srli	s2,s2,0x1
    80008c14:	fffff097          	auipc	ra,0xfffff
    80008c18:	854080e7          	jalr	-1964(ra) # 80007468 <mycpu>
    80008c1c:	00197913          	andi	s2,s2,1
    80008c20:	07252e23          	sw	s2,124(a0)
    80008c24:	f75ff06f          	j	80008b98 <acquire+0x3c>

0000000080008c28 <release>:
    80008c28:	fe010113          	addi	sp,sp,-32
    80008c2c:	00813823          	sd	s0,16(sp)
    80008c30:	00113c23          	sd	ra,24(sp)
    80008c34:	00913423          	sd	s1,8(sp)
    80008c38:	01213023          	sd	s2,0(sp)
    80008c3c:	02010413          	addi	s0,sp,32
    80008c40:	00052783          	lw	a5,0(a0)
    80008c44:	00079a63          	bnez	a5,80008c58 <release+0x30>
    80008c48:	00002517          	auipc	a0,0x2
    80008c4c:	cc050513          	addi	a0,a0,-832 # 8000a908 <digits+0x28>
    80008c50:	fffff097          	auipc	ra,0xfffff
    80008c54:	1dc080e7          	jalr	476(ra) # 80007e2c <panic>
    80008c58:	01053903          	ld	s2,16(a0)
    80008c5c:	00050493          	mv	s1,a0
    80008c60:	fffff097          	auipc	ra,0xfffff
    80008c64:	808080e7          	jalr	-2040(ra) # 80007468 <mycpu>
    80008c68:	fea910e3          	bne	s2,a0,80008c48 <release+0x20>
    80008c6c:	0004b823          	sd	zero,16(s1)
    80008c70:	0ff0000f          	fence
    80008c74:	0f50000f          	fence	iorw,ow
    80008c78:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008c7c:	ffffe097          	auipc	ra,0xffffe
    80008c80:	7ec080e7          	jalr	2028(ra) # 80007468 <mycpu>
    80008c84:	100027f3          	csrr	a5,sstatus
    80008c88:	0027f793          	andi	a5,a5,2
    80008c8c:	04079a63          	bnez	a5,80008ce0 <release+0xb8>
    80008c90:	07852783          	lw	a5,120(a0)
    80008c94:	02f05e63          	blez	a5,80008cd0 <release+0xa8>
    80008c98:	fff7871b          	addiw	a4,a5,-1
    80008c9c:	06e52c23          	sw	a4,120(a0)
    80008ca0:	00071c63          	bnez	a4,80008cb8 <release+0x90>
    80008ca4:	07c52783          	lw	a5,124(a0)
    80008ca8:	00078863          	beqz	a5,80008cb8 <release+0x90>
    80008cac:	100027f3          	csrr	a5,sstatus
    80008cb0:	0027e793          	ori	a5,a5,2
    80008cb4:	10079073          	csrw	sstatus,a5
    80008cb8:	01813083          	ld	ra,24(sp)
    80008cbc:	01013403          	ld	s0,16(sp)
    80008cc0:	00813483          	ld	s1,8(sp)
    80008cc4:	00013903          	ld	s2,0(sp)
    80008cc8:	02010113          	addi	sp,sp,32
    80008ccc:	00008067          	ret
    80008cd0:	00002517          	auipc	a0,0x2
    80008cd4:	c5850513          	addi	a0,a0,-936 # 8000a928 <digits+0x48>
    80008cd8:	fffff097          	auipc	ra,0xfffff
    80008cdc:	154080e7          	jalr	340(ra) # 80007e2c <panic>
    80008ce0:	00002517          	auipc	a0,0x2
    80008ce4:	c3050513          	addi	a0,a0,-976 # 8000a910 <digits+0x30>
    80008ce8:	fffff097          	auipc	ra,0xfffff
    80008cec:	144080e7          	jalr	324(ra) # 80007e2c <panic>

0000000080008cf0 <holding>:
    80008cf0:	00052783          	lw	a5,0(a0)
    80008cf4:	00079663          	bnez	a5,80008d00 <holding+0x10>
    80008cf8:	00000513          	li	a0,0
    80008cfc:	00008067          	ret
    80008d00:	fe010113          	addi	sp,sp,-32
    80008d04:	00813823          	sd	s0,16(sp)
    80008d08:	00913423          	sd	s1,8(sp)
    80008d0c:	00113c23          	sd	ra,24(sp)
    80008d10:	02010413          	addi	s0,sp,32
    80008d14:	01053483          	ld	s1,16(a0)
    80008d18:	ffffe097          	auipc	ra,0xffffe
    80008d1c:	750080e7          	jalr	1872(ra) # 80007468 <mycpu>
    80008d20:	01813083          	ld	ra,24(sp)
    80008d24:	01013403          	ld	s0,16(sp)
    80008d28:	40a48533          	sub	a0,s1,a0
    80008d2c:	00153513          	seqz	a0,a0
    80008d30:	00813483          	ld	s1,8(sp)
    80008d34:	02010113          	addi	sp,sp,32
    80008d38:	00008067          	ret

0000000080008d3c <push_off>:
    80008d3c:	fe010113          	addi	sp,sp,-32
    80008d40:	00813823          	sd	s0,16(sp)
    80008d44:	00113c23          	sd	ra,24(sp)
    80008d48:	00913423          	sd	s1,8(sp)
    80008d4c:	02010413          	addi	s0,sp,32
    80008d50:	100024f3          	csrr	s1,sstatus
    80008d54:	100027f3          	csrr	a5,sstatus
    80008d58:	ffd7f793          	andi	a5,a5,-3
    80008d5c:	10079073          	csrw	sstatus,a5
    80008d60:	ffffe097          	auipc	ra,0xffffe
    80008d64:	708080e7          	jalr	1800(ra) # 80007468 <mycpu>
    80008d68:	07852783          	lw	a5,120(a0)
    80008d6c:	02078663          	beqz	a5,80008d98 <push_off+0x5c>
    80008d70:	ffffe097          	auipc	ra,0xffffe
    80008d74:	6f8080e7          	jalr	1784(ra) # 80007468 <mycpu>
    80008d78:	07852783          	lw	a5,120(a0)
    80008d7c:	01813083          	ld	ra,24(sp)
    80008d80:	01013403          	ld	s0,16(sp)
    80008d84:	0017879b          	addiw	a5,a5,1
    80008d88:	06f52c23          	sw	a5,120(a0)
    80008d8c:	00813483          	ld	s1,8(sp)
    80008d90:	02010113          	addi	sp,sp,32
    80008d94:	00008067          	ret
    80008d98:	0014d493          	srli	s1,s1,0x1
    80008d9c:	ffffe097          	auipc	ra,0xffffe
    80008da0:	6cc080e7          	jalr	1740(ra) # 80007468 <mycpu>
    80008da4:	0014f493          	andi	s1,s1,1
    80008da8:	06952e23          	sw	s1,124(a0)
    80008dac:	fc5ff06f          	j	80008d70 <push_off+0x34>

0000000080008db0 <pop_off>:
    80008db0:	ff010113          	addi	sp,sp,-16
    80008db4:	00813023          	sd	s0,0(sp)
    80008db8:	00113423          	sd	ra,8(sp)
    80008dbc:	01010413          	addi	s0,sp,16
    80008dc0:	ffffe097          	auipc	ra,0xffffe
    80008dc4:	6a8080e7          	jalr	1704(ra) # 80007468 <mycpu>
    80008dc8:	100027f3          	csrr	a5,sstatus
    80008dcc:	0027f793          	andi	a5,a5,2
    80008dd0:	04079663          	bnez	a5,80008e1c <pop_off+0x6c>
    80008dd4:	07852783          	lw	a5,120(a0)
    80008dd8:	02f05a63          	blez	a5,80008e0c <pop_off+0x5c>
    80008ddc:	fff7871b          	addiw	a4,a5,-1
    80008de0:	06e52c23          	sw	a4,120(a0)
    80008de4:	00071c63          	bnez	a4,80008dfc <pop_off+0x4c>
    80008de8:	07c52783          	lw	a5,124(a0)
    80008dec:	00078863          	beqz	a5,80008dfc <pop_off+0x4c>
    80008df0:	100027f3          	csrr	a5,sstatus
    80008df4:	0027e793          	ori	a5,a5,2
    80008df8:	10079073          	csrw	sstatus,a5
    80008dfc:	00813083          	ld	ra,8(sp)
    80008e00:	00013403          	ld	s0,0(sp)
    80008e04:	01010113          	addi	sp,sp,16
    80008e08:	00008067          	ret
    80008e0c:	00002517          	auipc	a0,0x2
    80008e10:	b1c50513          	addi	a0,a0,-1252 # 8000a928 <digits+0x48>
    80008e14:	fffff097          	auipc	ra,0xfffff
    80008e18:	018080e7          	jalr	24(ra) # 80007e2c <panic>
    80008e1c:	00002517          	auipc	a0,0x2
    80008e20:	af450513          	addi	a0,a0,-1292 # 8000a910 <digits+0x30>
    80008e24:	fffff097          	auipc	ra,0xfffff
    80008e28:	008080e7          	jalr	8(ra) # 80007e2c <panic>

0000000080008e2c <push_on>:
    80008e2c:	fe010113          	addi	sp,sp,-32
    80008e30:	00813823          	sd	s0,16(sp)
    80008e34:	00113c23          	sd	ra,24(sp)
    80008e38:	00913423          	sd	s1,8(sp)
    80008e3c:	02010413          	addi	s0,sp,32
    80008e40:	100024f3          	csrr	s1,sstatus
    80008e44:	100027f3          	csrr	a5,sstatus
    80008e48:	0027e793          	ori	a5,a5,2
    80008e4c:	10079073          	csrw	sstatus,a5
    80008e50:	ffffe097          	auipc	ra,0xffffe
    80008e54:	618080e7          	jalr	1560(ra) # 80007468 <mycpu>
    80008e58:	07852783          	lw	a5,120(a0)
    80008e5c:	02078663          	beqz	a5,80008e88 <push_on+0x5c>
    80008e60:	ffffe097          	auipc	ra,0xffffe
    80008e64:	608080e7          	jalr	1544(ra) # 80007468 <mycpu>
    80008e68:	07852783          	lw	a5,120(a0)
    80008e6c:	01813083          	ld	ra,24(sp)
    80008e70:	01013403          	ld	s0,16(sp)
    80008e74:	0017879b          	addiw	a5,a5,1
    80008e78:	06f52c23          	sw	a5,120(a0)
    80008e7c:	00813483          	ld	s1,8(sp)
    80008e80:	02010113          	addi	sp,sp,32
    80008e84:	00008067          	ret
    80008e88:	0014d493          	srli	s1,s1,0x1
    80008e8c:	ffffe097          	auipc	ra,0xffffe
    80008e90:	5dc080e7          	jalr	1500(ra) # 80007468 <mycpu>
    80008e94:	0014f493          	andi	s1,s1,1
    80008e98:	06952e23          	sw	s1,124(a0)
    80008e9c:	fc5ff06f          	j	80008e60 <push_on+0x34>

0000000080008ea0 <pop_on>:
    80008ea0:	ff010113          	addi	sp,sp,-16
    80008ea4:	00813023          	sd	s0,0(sp)
    80008ea8:	00113423          	sd	ra,8(sp)
    80008eac:	01010413          	addi	s0,sp,16
    80008eb0:	ffffe097          	auipc	ra,0xffffe
    80008eb4:	5b8080e7          	jalr	1464(ra) # 80007468 <mycpu>
    80008eb8:	100027f3          	csrr	a5,sstatus
    80008ebc:	0027f793          	andi	a5,a5,2
    80008ec0:	04078463          	beqz	a5,80008f08 <pop_on+0x68>
    80008ec4:	07852783          	lw	a5,120(a0)
    80008ec8:	02f05863          	blez	a5,80008ef8 <pop_on+0x58>
    80008ecc:	fff7879b          	addiw	a5,a5,-1
    80008ed0:	06f52c23          	sw	a5,120(a0)
    80008ed4:	07853783          	ld	a5,120(a0)
    80008ed8:	00079863          	bnez	a5,80008ee8 <pop_on+0x48>
    80008edc:	100027f3          	csrr	a5,sstatus
    80008ee0:	ffd7f793          	andi	a5,a5,-3
    80008ee4:	10079073          	csrw	sstatus,a5
    80008ee8:	00813083          	ld	ra,8(sp)
    80008eec:	00013403          	ld	s0,0(sp)
    80008ef0:	01010113          	addi	sp,sp,16
    80008ef4:	00008067          	ret
    80008ef8:	00002517          	auipc	a0,0x2
    80008efc:	a5850513          	addi	a0,a0,-1448 # 8000a950 <digits+0x70>
    80008f00:	fffff097          	auipc	ra,0xfffff
    80008f04:	f2c080e7          	jalr	-212(ra) # 80007e2c <panic>
    80008f08:	00002517          	auipc	a0,0x2
    80008f0c:	a2850513          	addi	a0,a0,-1496 # 8000a930 <digits+0x50>
    80008f10:	fffff097          	auipc	ra,0xfffff
    80008f14:	f1c080e7          	jalr	-228(ra) # 80007e2c <panic>

0000000080008f18 <__memset>:
    80008f18:	ff010113          	addi	sp,sp,-16
    80008f1c:	00813423          	sd	s0,8(sp)
    80008f20:	01010413          	addi	s0,sp,16
    80008f24:	1a060e63          	beqz	a2,800090e0 <__memset+0x1c8>
    80008f28:	40a007b3          	neg	a5,a0
    80008f2c:	0077f793          	andi	a5,a5,7
    80008f30:	00778693          	addi	a3,a5,7
    80008f34:	00b00813          	li	a6,11
    80008f38:	0ff5f593          	andi	a1,a1,255
    80008f3c:	fff6071b          	addiw	a4,a2,-1
    80008f40:	1b06e663          	bltu	a3,a6,800090ec <__memset+0x1d4>
    80008f44:	1cd76463          	bltu	a4,a3,8000910c <__memset+0x1f4>
    80008f48:	1a078e63          	beqz	a5,80009104 <__memset+0x1ec>
    80008f4c:	00b50023          	sb	a1,0(a0)
    80008f50:	00100713          	li	a4,1
    80008f54:	1ae78463          	beq	a5,a4,800090fc <__memset+0x1e4>
    80008f58:	00b500a3          	sb	a1,1(a0)
    80008f5c:	00200713          	li	a4,2
    80008f60:	1ae78a63          	beq	a5,a4,80009114 <__memset+0x1fc>
    80008f64:	00b50123          	sb	a1,2(a0)
    80008f68:	00300713          	li	a4,3
    80008f6c:	18e78463          	beq	a5,a4,800090f4 <__memset+0x1dc>
    80008f70:	00b501a3          	sb	a1,3(a0)
    80008f74:	00400713          	li	a4,4
    80008f78:	1ae78263          	beq	a5,a4,8000911c <__memset+0x204>
    80008f7c:	00b50223          	sb	a1,4(a0)
    80008f80:	00500713          	li	a4,5
    80008f84:	1ae78063          	beq	a5,a4,80009124 <__memset+0x20c>
    80008f88:	00b502a3          	sb	a1,5(a0)
    80008f8c:	00700713          	li	a4,7
    80008f90:	18e79e63          	bne	a5,a4,8000912c <__memset+0x214>
    80008f94:	00b50323          	sb	a1,6(a0)
    80008f98:	00700e93          	li	t4,7
    80008f9c:	00859713          	slli	a4,a1,0x8
    80008fa0:	00e5e733          	or	a4,a1,a4
    80008fa4:	01059e13          	slli	t3,a1,0x10
    80008fa8:	01c76e33          	or	t3,a4,t3
    80008fac:	01859313          	slli	t1,a1,0x18
    80008fb0:	006e6333          	or	t1,t3,t1
    80008fb4:	02059893          	slli	a7,a1,0x20
    80008fb8:	40f60e3b          	subw	t3,a2,a5
    80008fbc:	011368b3          	or	a7,t1,a7
    80008fc0:	02859813          	slli	a6,a1,0x28
    80008fc4:	0108e833          	or	a6,a7,a6
    80008fc8:	03059693          	slli	a3,a1,0x30
    80008fcc:	003e589b          	srliw	a7,t3,0x3
    80008fd0:	00d866b3          	or	a3,a6,a3
    80008fd4:	03859713          	slli	a4,a1,0x38
    80008fd8:	00389813          	slli	a6,a7,0x3
    80008fdc:	00f507b3          	add	a5,a0,a5
    80008fe0:	00e6e733          	or	a4,a3,a4
    80008fe4:	000e089b          	sext.w	a7,t3
    80008fe8:	00f806b3          	add	a3,a6,a5
    80008fec:	00e7b023          	sd	a4,0(a5)
    80008ff0:	00878793          	addi	a5,a5,8
    80008ff4:	fed79ce3          	bne	a5,a3,80008fec <__memset+0xd4>
    80008ff8:	ff8e7793          	andi	a5,t3,-8
    80008ffc:	0007871b          	sext.w	a4,a5
    80009000:	01d787bb          	addw	a5,a5,t4
    80009004:	0ce88e63          	beq	a7,a4,800090e0 <__memset+0x1c8>
    80009008:	00f50733          	add	a4,a0,a5
    8000900c:	00b70023          	sb	a1,0(a4)
    80009010:	0017871b          	addiw	a4,a5,1
    80009014:	0cc77663          	bgeu	a4,a2,800090e0 <__memset+0x1c8>
    80009018:	00e50733          	add	a4,a0,a4
    8000901c:	00b70023          	sb	a1,0(a4)
    80009020:	0027871b          	addiw	a4,a5,2
    80009024:	0ac77e63          	bgeu	a4,a2,800090e0 <__memset+0x1c8>
    80009028:	00e50733          	add	a4,a0,a4
    8000902c:	00b70023          	sb	a1,0(a4)
    80009030:	0037871b          	addiw	a4,a5,3
    80009034:	0ac77663          	bgeu	a4,a2,800090e0 <__memset+0x1c8>
    80009038:	00e50733          	add	a4,a0,a4
    8000903c:	00b70023          	sb	a1,0(a4)
    80009040:	0047871b          	addiw	a4,a5,4
    80009044:	08c77e63          	bgeu	a4,a2,800090e0 <__memset+0x1c8>
    80009048:	00e50733          	add	a4,a0,a4
    8000904c:	00b70023          	sb	a1,0(a4)
    80009050:	0057871b          	addiw	a4,a5,5
    80009054:	08c77663          	bgeu	a4,a2,800090e0 <__memset+0x1c8>
    80009058:	00e50733          	add	a4,a0,a4
    8000905c:	00b70023          	sb	a1,0(a4)
    80009060:	0067871b          	addiw	a4,a5,6
    80009064:	06c77e63          	bgeu	a4,a2,800090e0 <__memset+0x1c8>
    80009068:	00e50733          	add	a4,a0,a4
    8000906c:	00b70023          	sb	a1,0(a4)
    80009070:	0077871b          	addiw	a4,a5,7
    80009074:	06c77663          	bgeu	a4,a2,800090e0 <__memset+0x1c8>
    80009078:	00e50733          	add	a4,a0,a4
    8000907c:	00b70023          	sb	a1,0(a4)
    80009080:	0087871b          	addiw	a4,a5,8
    80009084:	04c77e63          	bgeu	a4,a2,800090e0 <__memset+0x1c8>
    80009088:	00e50733          	add	a4,a0,a4
    8000908c:	00b70023          	sb	a1,0(a4)
    80009090:	0097871b          	addiw	a4,a5,9
    80009094:	04c77663          	bgeu	a4,a2,800090e0 <__memset+0x1c8>
    80009098:	00e50733          	add	a4,a0,a4
    8000909c:	00b70023          	sb	a1,0(a4)
    800090a0:	00a7871b          	addiw	a4,a5,10
    800090a4:	02c77e63          	bgeu	a4,a2,800090e0 <__memset+0x1c8>
    800090a8:	00e50733          	add	a4,a0,a4
    800090ac:	00b70023          	sb	a1,0(a4)
    800090b0:	00b7871b          	addiw	a4,a5,11
    800090b4:	02c77663          	bgeu	a4,a2,800090e0 <__memset+0x1c8>
    800090b8:	00e50733          	add	a4,a0,a4
    800090bc:	00b70023          	sb	a1,0(a4)
    800090c0:	00c7871b          	addiw	a4,a5,12
    800090c4:	00c77e63          	bgeu	a4,a2,800090e0 <__memset+0x1c8>
    800090c8:	00e50733          	add	a4,a0,a4
    800090cc:	00b70023          	sb	a1,0(a4)
    800090d0:	00d7879b          	addiw	a5,a5,13
    800090d4:	00c7f663          	bgeu	a5,a2,800090e0 <__memset+0x1c8>
    800090d8:	00f507b3          	add	a5,a0,a5
    800090dc:	00b78023          	sb	a1,0(a5)
    800090e0:	00813403          	ld	s0,8(sp)
    800090e4:	01010113          	addi	sp,sp,16
    800090e8:	00008067          	ret
    800090ec:	00b00693          	li	a3,11
    800090f0:	e55ff06f          	j	80008f44 <__memset+0x2c>
    800090f4:	00300e93          	li	t4,3
    800090f8:	ea5ff06f          	j	80008f9c <__memset+0x84>
    800090fc:	00100e93          	li	t4,1
    80009100:	e9dff06f          	j	80008f9c <__memset+0x84>
    80009104:	00000e93          	li	t4,0
    80009108:	e95ff06f          	j	80008f9c <__memset+0x84>
    8000910c:	00000793          	li	a5,0
    80009110:	ef9ff06f          	j	80009008 <__memset+0xf0>
    80009114:	00200e93          	li	t4,2
    80009118:	e85ff06f          	j	80008f9c <__memset+0x84>
    8000911c:	00400e93          	li	t4,4
    80009120:	e7dff06f          	j	80008f9c <__memset+0x84>
    80009124:	00500e93          	li	t4,5
    80009128:	e75ff06f          	j	80008f9c <__memset+0x84>
    8000912c:	00600e93          	li	t4,6
    80009130:	e6dff06f          	j	80008f9c <__memset+0x84>

0000000080009134 <__memmove>:
    80009134:	ff010113          	addi	sp,sp,-16
    80009138:	00813423          	sd	s0,8(sp)
    8000913c:	01010413          	addi	s0,sp,16
    80009140:	0e060863          	beqz	a2,80009230 <__memmove+0xfc>
    80009144:	fff6069b          	addiw	a3,a2,-1
    80009148:	0006881b          	sext.w	a6,a3
    8000914c:	0ea5e863          	bltu	a1,a0,8000923c <__memmove+0x108>
    80009150:	00758713          	addi	a4,a1,7
    80009154:	00a5e7b3          	or	a5,a1,a0
    80009158:	40a70733          	sub	a4,a4,a0
    8000915c:	0077f793          	andi	a5,a5,7
    80009160:	00f73713          	sltiu	a4,a4,15
    80009164:	00174713          	xori	a4,a4,1
    80009168:	0017b793          	seqz	a5,a5
    8000916c:	00e7f7b3          	and	a5,a5,a4
    80009170:	10078863          	beqz	a5,80009280 <__memmove+0x14c>
    80009174:	00900793          	li	a5,9
    80009178:	1107f463          	bgeu	a5,a6,80009280 <__memmove+0x14c>
    8000917c:	0036581b          	srliw	a6,a2,0x3
    80009180:	fff8081b          	addiw	a6,a6,-1
    80009184:	02081813          	slli	a6,a6,0x20
    80009188:	01d85893          	srli	a7,a6,0x1d
    8000918c:	00858813          	addi	a6,a1,8
    80009190:	00058793          	mv	a5,a1
    80009194:	00050713          	mv	a4,a0
    80009198:	01088833          	add	a6,a7,a6
    8000919c:	0007b883          	ld	a7,0(a5)
    800091a0:	00878793          	addi	a5,a5,8
    800091a4:	00870713          	addi	a4,a4,8
    800091a8:	ff173c23          	sd	a7,-8(a4)
    800091ac:	ff0798e3          	bne	a5,a6,8000919c <__memmove+0x68>
    800091b0:	ff867713          	andi	a4,a2,-8
    800091b4:	02071793          	slli	a5,a4,0x20
    800091b8:	0207d793          	srli	a5,a5,0x20
    800091bc:	00f585b3          	add	a1,a1,a5
    800091c0:	40e686bb          	subw	a3,a3,a4
    800091c4:	00f507b3          	add	a5,a0,a5
    800091c8:	06e60463          	beq	a2,a4,80009230 <__memmove+0xfc>
    800091cc:	0005c703          	lbu	a4,0(a1)
    800091d0:	00e78023          	sb	a4,0(a5)
    800091d4:	04068e63          	beqz	a3,80009230 <__memmove+0xfc>
    800091d8:	0015c603          	lbu	a2,1(a1)
    800091dc:	00100713          	li	a4,1
    800091e0:	00c780a3          	sb	a2,1(a5)
    800091e4:	04e68663          	beq	a3,a4,80009230 <__memmove+0xfc>
    800091e8:	0025c603          	lbu	a2,2(a1)
    800091ec:	00200713          	li	a4,2
    800091f0:	00c78123          	sb	a2,2(a5)
    800091f4:	02e68e63          	beq	a3,a4,80009230 <__memmove+0xfc>
    800091f8:	0035c603          	lbu	a2,3(a1)
    800091fc:	00300713          	li	a4,3
    80009200:	00c781a3          	sb	a2,3(a5)
    80009204:	02e68663          	beq	a3,a4,80009230 <__memmove+0xfc>
    80009208:	0045c603          	lbu	a2,4(a1)
    8000920c:	00400713          	li	a4,4
    80009210:	00c78223          	sb	a2,4(a5)
    80009214:	00e68e63          	beq	a3,a4,80009230 <__memmove+0xfc>
    80009218:	0055c603          	lbu	a2,5(a1)
    8000921c:	00500713          	li	a4,5
    80009220:	00c782a3          	sb	a2,5(a5)
    80009224:	00e68663          	beq	a3,a4,80009230 <__memmove+0xfc>
    80009228:	0065c703          	lbu	a4,6(a1)
    8000922c:	00e78323          	sb	a4,6(a5)
    80009230:	00813403          	ld	s0,8(sp)
    80009234:	01010113          	addi	sp,sp,16
    80009238:	00008067          	ret
    8000923c:	02061713          	slli	a4,a2,0x20
    80009240:	02075713          	srli	a4,a4,0x20
    80009244:	00e587b3          	add	a5,a1,a4
    80009248:	f0f574e3          	bgeu	a0,a5,80009150 <__memmove+0x1c>
    8000924c:	02069613          	slli	a2,a3,0x20
    80009250:	02065613          	srli	a2,a2,0x20
    80009254:	fff64613          	not	a2,a2
    80009258:	00e50733          	add	a4,a0,a4
    8000925c:	00c78633          	add	a2,a5,a2
    80009260:	fff7c683          	lbu	a3,-1(a5)
    80009264:	fff78793          	addi	a5,a5,-1
    80009268:	fff70713          	addi	a4,a4,-1
    8000926c:	00d70023          	sb	a3,0(a4)
    80009270:	fec798e3          	bne	a5,a2,80009260 <__memmove+0x12c>
    80009274:	00813403          	ld	s0,8(sp)
    80009278:	01010113          	addi	sp,sp,16
    8000927c:	00008067          	ret
    80009280:	02069713          	slli	a4,a3,0x20
    80009284:	02075713          	srli	a4,a4,0x20
    80009288:	00170713          	addi	a4,a4,1
    8000928c:	00e50733          	add	a4,a0,a4
    80009290:	00050793          	mv	a5,a0
    80009294:	0005c683          	lbu	a3,0(a1)
    80009298:	00178793          	addi	a5,a5,1
    8000929c:	00158593          	addi	a1,a1,1
    800092a0:	fed78fa3          	sb	a3,-1(a5)
    800092a4:	fee798e3          	bne	a5,a4,80009294 <__memmove+0x160>
    800092a8:	f89ff06f          	j	80009230 <__memmove+0xfc>

00000000800092ac <__putc>:
    800092ac:	fe010113          	addi	sp,sp,-32
    800092b0:	00813823          	sd	s0,16(sp)
    800092b4:	00113c23          	sd	ra,24(sp)
    800092b8:	02010413          	addi	s0,sp,32
    800092bc:	00050793          	mv	a5,a0
    800092c0:	fef40593          	addi	a1,s0,-17
    800092c4:	00100613          	li	a2,1
    800092c8:	00000513          	li	a0,0
    800092cc:	fef407a3          	sb	a5,-17(s0)
    800092d0:	fffff097          	auipc	ra,0xfffff
    800092d4:	b3c080e7          	jalr	-1220(ra) # 80007e0c <console_write>
    800092d8:	01813083          	ld	ra,24(sp)
    800092dc:	01013403          	ld	s0,16(sp)
    800092e0:	02010113          	addi	sp,sp,32
    800092e4:	00008067          	ret

00000000800092e8 <__getc>:
    800092e8:	fe010113          	addi	sp,sp,-32
    800092ec:	00813823          	sd	s0,16(sp)
    800092f0:	00113c23          	sd	ra,24(sp)
    800092f4:	02010413          	addi	s0,sp,32
    800092f8:	fe840593          	addi	a1,s0,-24
    800092fc:	00100613          	li	a2,1
    80009300:	00000513          	li	a0,0
    80009304:	fffff097          	auipc	ra,0xfffff
    80009308:	ae8080e7          	jalr	-1304(ra) # 80007dec <console_read>
    8000930c:	fe844503          	lbu	a0,-24(s0)
    80009310:	01813083          	ld	ra,24(sp)
    80009314:	01013403          	ld	s0,16(sp)
    80009318:	02010113          	addi	sp,sp,32
    8000931c:	00008067          	ret

0000000080009320 <console_handler>:
    80009320:	fe010113          	addi	sp,sp,-32
    80009324:	00813823          	sd	s0,16(sp)
    80009328:	00113c23          	sd	ra,24(sp)
    8000932c:	00913423          	sd	s1,8(sp)
    80009330:	02010413          	addi	s0,sp,32
    80009334:	14202773          	csrr	a4,scause
    80009338:	100027f3          	csrr	a5,sstatus
    8000933c:	0027f793          	andi	a5,a5,2
    80009340:	06079e63          	bnez	a5,800093bc <console_handler+0x9c>
    80009344:	00074c63          	bltz	a4,8000935c <console_handler+0x3c>
    80009348:	01813083          	ld	ra,24(sp)
    8000934c:	01013403          	ld	s0,16(sp)
    80009350:	00813483          	ld	s1,8(sp)
    80009354:	02010113          	addi	sp,sp,32
    80009358:	00008067          	ret
    8000935c:	0ff77713          	andi	a4,a4,255
    80009360:	00900793          	li	a5,9
    80009364:	fef712e3          	bne	a4,a5,80009348 <console_handler+0x28>
    80009368:	ffffe097          	auipc	ra,0xffffe
    8000936c:	6dc080e7          	jalr	1756(ra) # 80007a44 <plic_claim>
    80009370:	00a00793          	li	a5,10
    80009374:	00050493          	mv	s1,a0
    80009378:	02f50c63          	beq	a0,a5,800093b0 <console_handler+0x90>
    8000937c:	fc0506e3          	beqz	a0,80009348 <console_handler+0x28>
    80009380:	00050593          	mv	a1,a0
    80009384:	00001517          	auipc	a0,0x1
    80009388:	4d450513          	addi	a0,a0,1236 # 8000a858 <CONSOLE_STATUS+0x848>
    8000938c:	fffff097          	auipc	ra,0xfffff
    80009390:	afc080e7          	jalr	-1284(ra) # 80007e88 <__printf>
    80009394:	01013403          	ld	s0,16(sp)
    80009398:	01813083          	ld	ra,24(sp)
    8000939c:	00048513          	mv	a0,s1
    800093a0:	00813483          	ld	s1,8(sp)
    800093a4:	02010113          	addi	sp,sp,32
    800093a8:	ffffe317          	auipc	t1,0xffffe
    800093ac:	6d430067          	jr	1748(t1) # 80007a7c <plic_complete>
    800093b0:	fffff097          	auipc	ra,0xfffff
    800093b4:	3e0080e7          	jalr	992(ra) # 80008790 <uartintr>
    800093b8:	fddff06f          	j	80009394 <console_handler+0x74>
    800093bc:	00001517          	auipc	a0,0x1
    800093c0:	59c50513          	addi	a0,a0,1436 # 8000a958 <digits+0x78>
    800093c4:	fffff097          	auipc	ra,0xfffff
    800093c8:	a68080e7          	jalr	-1432(ra) # 80007e2c <panic>
	...
