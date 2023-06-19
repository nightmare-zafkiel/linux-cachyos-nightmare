# Maintainer: Peter Jung ptr1337 <admin@ptr1337.dev> && Piotr Gorski <lucjan.lucjanov@gmail.com>
# Contributor: Jan Alexander Steffens (heftig) <jan.steffens@gmail.com>
# Contributor: Tobias Powalowski <tpowa@archlinux.org>
# Contributor: Thomas Baechler <thomas@archlinux.org>

### Selecting CachyOS config
# ATTENTION - one of two predefined values should be selected!
# 'yes' - enable CachyOS config
# 'no' - disable CachyOS config
_cachy_config=${_cachy_config-'yes'}

### Selecting the CPU scheduler
# ATTENTION - one of six predefined values should be selected!
# 'bmq' - select 'BitMap Queue CPU scheduler'
# 'pds' - select 'Priority and Deadline based Skip list multiple queue CPU scheduler'
# 'bore' - select 'Burst-Oriented Response Enhancer'
# 'cfs' - select 'Completely Fair Scheduler'
# 'tt' - select 'Task Type Scheduler by Hamad Marri'
# 'hardened' - select 'BORE Scheduler hardened' ## kernel with hardened config and hardening patches with the bore scheduler
# 'cachyos' - select EEVDF and BORE Scheduler with some CachyOS Optimizations. EEVDF does bring latency-nice as default
_cpusched=${_cpusched-'cachyos'}

## Apply some suggested sysctl values from the bore developer
## These are adjusted to BORE
_tune_bore=${_tune_bore-y}

### TkG patches
# Apply Tkg default settings
_tkgify=y

# You can pass a default set of kernel command line options here - example: "intel_pstate=passive nowatchdog amdgpu.ppfeaturemask=0xfffd7fff mitigations=off"
_custom_commandline="intel_pstate=passive nowatchdog quiet console=tty0 console=ttyS0,115200n8 cryptomgr.notests initcall_debug intel_iommu=igfx_off kvm-intel.nested=1 no_timer_check noreplace-smp page_alloc.shuffle=1 rcupdate.rcu_expedited=1 rootfstype=ext4,btrfs,xfs,f2fs tsc=reliable rw"

# Set to "true" to use ACS override patch - https://wiki.archlinux.org/index.php/PCI_passthrough_via_OVMF#Bypassing_the_IOMMU_groups_.28ACS_override_patch.29 - Kernel default is "false"
_acs_override=y
#
# Set to "true" to enable misc additions - May contain temporary fixes pending upstream or changes that can break on non-Arch - Kernel default is "true"
_misc_adds=y

# Set to "true" to disable FUNCTION_TRACER/GRAPH_TRACER, lowering overhead but limiting debugging and analyzing of kernel functions - Kernel default is "false"
_ftracedisable=y

### Clear patches
_cleartux=y

### BUILD OPTIONS
# Set these variables to ANYTHING that is not null to enable them
_noccache=

### Tweak kernel options prior to a build via nconfig
_makenconfig=${_makenconfig-}

### Tweak kernel options prior to a build via menuconfig
_makemenuconfig=${_makemenuconfig-}

### Tweak kernel options prior to a build via xconfig
_makexconfig=${_makexconfig-}

### Tweak kernel options prior to a build via gconfig
_makegconfig=${_makegconfig-}

# NUMA is optimized for multi-socket motherboards.
# A single multi-core CPU actually runs slower with NUMA enabled.
# See, https://bugs.archlinux.org/task/31187
# Not disabling since the bugtrack mentioned above is very old.
_NUMAdisable=${_NUMAdisable-}

# Compile ONLY used modules to VASTLYreduce the number of modules built
# and the build time.
#
# To keep track of which modules are needed for your specific system/hardware,
# give module_db script a try: https://aur.archlinux.org/packages/modprobed-db
# This PKGBUILD read the database kept if it exists
#
# More at this wiki page ---> https://wiki.archlinux.org/index.php/Modprobed-db
_localmodcfg=${_localmodcfg-}

# Use the current kernel's .config file
# Enabling this option will use the .config of the RUNNING kernel rather than
# the ARCH defaults. Useful when the package gets updated and you already went
# through the trouble of customizing your config options.  NOT recommended when
# a new kernel is released, but again, convenient for package bumps.
_use_current=${_use_current-}

### Set this to your number of threads you have in your machine otherwise it will default to 128
_nr_cpus=${_nr_cpus-}

### Set performance governor as default
_per_gov=${_per_gov-y}

### Optimize harder
_cc_harder=${_cc_harder-y}

### Enable TCP_CONG_BBR2
_tcp_bbr2=${_tcp_bbr2-y}

### Running with a 1000HZ, 750Hz, 600 Hz or 500Hz tick rate
_HZ_ticks=${_HZ_ticks-1000}

## Choose between perodic, idle or full
### Full tickless can give higher performances in various cases but, depending on hardware, lower consistency.
_tickrate=${_tickrate-full}

## Choose between full(low-latency), voluntary or server
_preempt=${_preempt-full}

### Disable MQ-Deadline I/O scheduler
_mq_deadline_disable=${_mq_deadline_disable-}

### Disable Kyber I/O scheduler
_kyber_disable=${_kyber_disable-y}

### Enable multigenerational LRU
# ATTENTION - one of three predefined values should be selected!
# 'standard' - enable multigenerational LRU 
# 'stats' - enable multigenerational LRU with stats
# 'none' - disable multigenerational LRU
_lru_config=${_lru_config-standard}

### Enable per-VMA locking
# ATTENTION - one of three predefined values should be selected!
# 'standard' - enable per-VMA locking
# 'stats' - enable per-VMA locking with stats
# 'none' - disable per-VMA locking
_vma_config=${_vma_config-standard}

### Transparent Hugepages
# ATTENTION - one of two predefined values should be selected!
# 'always' - always enable THP
# 'madvise' - madvise, prevent applications from allocating more memory resources than necessary
# More infos here:
# https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/performance_tuning_guide/sect-red_hat_enterprise_linux-performance_tuning_guide-configuring_transparent_huge_pages
_hugepage=${_hugepage-always}

## Enable DAMON
_damon=${_damon-y}

## Enable Linux Random Number Generator
_lrng_enable=${_lrng_enable-y}

# CPU compiler optimizations - Defaults to prompt at kernel config if left empty
# AMD CPUs : "k8" "k8sse3" "k10" "barcelona" "bobcat" "jaguar" "bulldozer" "piledriver" "steamroller" "excavator" "zen" "zen2" "zen3"
# Intel CPUs : "mpsc"(P4 & older Netburst based Xeon) "atom" "core2" "nehalem" "westmere" "silvermont" "sandybridge" "ivybridge" "haswell" "broadwell" "skylake" "skylakex" "cannonlake" "icelake" "goldmont" "goldmontplus" "cascadelake" "cooperlake" "tigerlake" "sapphirerapids" "rocketlake" "alderlake"
# Other options :
# - "native_amd" (use compiler autodetection - Selecting your arch manually in the list above is recommended instead of this option)
# - "native_intel" (use compiler autodetection and will prompt for P6_NOPS - Selecting your arch manually in the list above is recommended instead of this option)
# - "generic" (kernel's default - to share the package between machines with different CPU µarch as long as they are x86-64)
#
# Or use the _use_auto_optimization with _use_auto_optimization=y
_processor_opt=${_processor_opt-}

_use_auto_optimization=${_use_auto_optimization-y}

# disable debug to lower the size of the kernel
_disable_debug=${_disable_debug-}

## Enable zram/zswap ZSTD compression
_zstd_compression=${_zstd_compression-y}

### Selecting the ZSTD kernel and modules compression level
# ATTENTION - one of two predefined values should be selected!
# 'ultra' - highest compression ratio
# 'normal' - standard compression ratio
# WARNING: the ultra settings can sometimes
# be counterproductive in both size and speed.
_zstd_level_value=${_zstd_level_value-normal}

# Clang LTO mode, only available with the "llvm" compiler - options are "no", "full" or "thin".
# "full: uses 1 thread for Linking, slow and uses more memory, theoretically with the highest performance gains."
# "thin: uses multiple threads, faster and uses less memory, may have a lower runtime performance than Full."
_use_llvm_lto=${_use_llvm_lto-full}

# Use suffix -lto only when requested by the user
# Enabled by default.
# If you do not want the suffix -lto remove the "y" sign next to the flag.
# https://github.com/CachyOS/linux-cachyos/issues/36
_use_lto_suffix=${_use_lto_suffix-}

# ATTENTION!: Really experimental LTO implementation for GCC
# This can improve the performance of the kernel
# The performance difference is currently negligible
# DEBUG and BTF needs to be disabled, otherwise the compilation is failing
# The Kernel is bigger with GCC LTO due to more inlining
# More informations:
# https://lore.kernel.org/lkml/20221114114344.18650-1-jirislaby@kernel.org/T/#md8014ad799b02221b67f33584002d98ede6234eb
_use_gcc_lto=${_use_gcc_lto-}

# KCFI is a proposed forward-edge control-flow integrity scheme for
# Clang, which is more suitable for kernel use than the existing CFI
# scheme used by CONFIG_CFI_CLANG. kCFI doesn't require LTO, doesn't
# alter function references to point to a jump table, and won't break
# function address equality.
# ATTENTION!: You need llvm-git or a patched llvm 15
# ATTENTION!: This is experimental, could fail to boot with nvidia
_use_kcfi=${_use_kcfi-}

# Build the zfs module builtin in to the kernel
_build_zfs=${_build_zfs-}

# Enable bcachefs
_bcachefs=${_bcachefs-}

# Enable Anbox support
_anbox=y

### END OF BUILD OPTIONS

source=()
sha256sums=()

# "Bypass" shasum check
addsrc() {
    source+=("$1")
    sha256sums+=("SKIP")
}

_die() { error "$@" ; exit; }

_make() {
  test -s version
  make KERNELRELEASE="$(<version)" "$@"
}

if [[ -n "$_use_llvm_lto" && -n "$_use_lto_suffix" ]]; then
    pkgsuffix=cachyos-nightmare-lto
else
    pkgsuffix=cachyos-nightmare
fi

pkgbase=linux-$pkgsuffix

_major=6.4
_minor=0

## Release Candidate

_rcver=rc6
pkgver=${_major}.${_rcver}
_stable=${_major}-${_rcver}

## Stable

# pkgver=${_major}.${_minor}
# _stable=${_major}
# _stable=${_major}.${_minor}

## Package info
_srcname=linux-${_stable}
#_srcname=linux-${_major}
pkgdesc="linux-cachyos (${_cpusched}/lto) with some tweaks"
pkgrel=1
_kernver=$pkgver-$pkgrel
arch=('x86_64' 'x86_64_v3')
url="https://github.com/nightmare-zafkiel/linux-cachyos-nightmare"
license=('GPL2')
options=('!strip')
makedepends=('bc' 'libelf' 'pahole' 'cpio' 'perl' 'tar' 'xz' 'zstd' 'gcc' 'gcc-libs' 'glibc' 'binutils' 'make' 'patch' 'python')
# LLVM makedepends
if [[ "$_use_llvm_lto" = "thin" || "$_use_llvm_lto" = "full" ]] || [ -n "$_use_kcfi" ]; then
    makedepends+=(clang llvm lld python)
    BUILD_FLAGS=(
        CC=clang
        LD=ld.lld
        LLVM=1
        LLVM_IAS=1
    )
fi
# ZFS makedepends
if [ -n "$_build_zfs" ]; then
    makedepends+=(git)
    addsrc "git+https://github.com/cachyos/zfs.git#commit=893549d6259a6904b7c1ee58080eb72acc4ff7aa"
fi

_patchsrc="https://raw.githubusercontent.com/cachyos/kernel-patches/master/${_major}"
_tkgpatchsrc="https://raw.githubusercontent.com/Frogging-Family/linux-tkg/master/linux-tkg-patches/${_major}"
_clearpatchsrc="https://raw.githubusercontent.com/clearlinux-pkgs/linux/main"
addsrc "https://github.com/torvalds/linux/archive/refs/tags/v${_major}-${_rcver}.tar.gz"
addsrc "https://raw.githubusercontent.com/CachyOS/linux-cachyos/master/linux-cachyos-rc/configure"
addsrc "https://raw.githubusercontent.com/CachyOS/linux-cachyos/master/linux-cachyos-rc/config"
addsrc "https://raw.githubusercontent.com/CachyOS/linux-cachyos/master/linux-cachyos-rc/auto-cpu-optimization.sh"
addsrc "${_patchsrc}/all/0001-cachyos-base-all.patch"
## ZFS Support
if [ -n "$_build_zfs" ]; then
    addsrc "git+https://github.com/cachyos/zfs.git#commit=21bd7661334cd865d17934bebbcaf8d3356279ee"
fi

case "$_cpusched" in
    cachyos) # CachyOS Scheduler (EEVDF + BORE)
        addsrc "${_patchsrc}/sched/0001-EEVDF.patch"
        addsrc "${_patchsrc}/sched/0001-bore-eevdf.patch";;
    pds|bmq) # BMQ/PDS scheduler
        addsrc "${_patchsrc}/sched/0001-prjc-cachy.patch"
        addsrc "https://raw.githubusercontent.com/CachyOS/linux-cachyos/master/linux-cachyos-rc/linux-cachyos-prjc.install";;
    tt) ## TT Scheduler
        addsrc "${_patchsrc}/sched/0001-tt-cachy.patch";;
    bore) ## BORE Scheduler with latency_nice
        [ -n "$_tune_bore" ] && addsrc "${_patchsrc}/misc/0001-bore-tuning-sysctl.patch"
        addsrc "${_patchsrc}/sched/0001-bore-cachy.patch";;
    hardened) ## Hardened Patches with BORE Scheduler
        addsrc "${_patchsrc}/sched/0001-bore-cachy.patch"
        addsrc "${_patchsrc}/sched/0001-hardened.patch";;
esac

## Kernel CFI Patch
if [ -n "$_use_kcfi" ]; then
    addsrc "${_patchsrc}/misc/0001-kcfi.patch"
    depends+=(llvm-git llvm-libs-git python)
    BUILD_FLAGS=(
        CC=clang
        LD=ld.lld
        LLVM=1
    )
fi
## bcachefs Support
if [ -n "$_bcachefs" ]; then
    addsrc "${_patchsrc}/misc/0001-bcachefs-after-lru.patch"
fi

if [ -n "$_use_gcc_lto" ]; then
    ## GCC-LTO Patch
    ## Fix for current gcc --enable-default-pie option
    addsrc "${_patchsrc}/misc/gcc-lto/0001-gcc-LTO-support-for-the-kernel.patch"
    addsrc "${_patchsrc}/misc/gcc-lto/0002-gcc-lto-no-pie.patch"
fi

## O3
if [ -n "$_cc_harder" ]; then
    addsrc "${_tkgpatchsrc}/0013-optimize_harder_O3.patch"
fi

# Custom patches (Tkg & kernel-patches)
if [ -n "$_tkgify" ]; then
    # Patches for WRITE_WATCH support in Wine
    addsrc "${_tkgpatchsrc}/0001-mm-Support-soft-dirty-flag-reset-for-VA-range.patch"
    addsrc "${_tkgpatchsrc}/0002-mm-Support-soft-dirty-flag-read-with-reset.patch"
fi

# if [ -n "$_acs_override" ]; then
#     addsrc "${_tkgpatchsrc}/0006-add-acs-overrides_iommu.patch"
# fi

if [ -n "$_misc_adds" ]; then
#     addsrc "${_tkgpatchsrc}/0012-misc-additions.patch"
    ## Cachy patches
#     addsrc "${_patchsrc}/misc/0001-mm-add-zblock-new-allocator-for-use-via-zpool-API.patch"
    #addsrc "${_patchsrc}/misc/0001-PCI-Allow-BAR-movement-during-boot-and-hotplug.patch"
#     addsrc "${_patchsrc}/misc/0001-mm-introduce-THP-Shrinker.patch"
#     addsrc "${_patchsrc}/misc/enable-resizable-bar-support-nv-driver.patch"
#    addsrc "https://raw.githubusercontent.com/CachyOS/kernel-patches/master/6.4/misc/0001-sched-Implement-BPF-extensible-scheduler-class.patch"
    echo "No misc patches"
fi

if [ -n "$_cleartux" ]; then
#     addsrc "${_clearpatchsrc}/0001-sched-cpuset-Fix-dl_cpu_busy-panic-due-to-empty-cs-c.patch"
#     addsrc "${_clearpatchsrc}/0004-sched-core-Do-not-requeue-task-on-CPU-excluded-from-.patch"
#     addsrc "${_clearpatchsrc}/0006-sched-fair-Optimize-and-simplify-rq-leaf_cfs_rq_list.patch"
#     addsrc "${_clearpatchsrc}/0010-sched-Remove-the-limitation-of-WF_ON_CPU-on-wakelist.patch"
#     addsrc "${_clearpatchsrc}/0106-intel_idle-tweak-cpuidle-cstates.patch"
#     addsrc "${_clearpatchsrc}/0111-ipv4-tcp-allow-the-memory-tuning-for-tcp-to-go-a-lit.patch"
#     addsrc "${_clearpatchsrc}/0117-xattr-allow-setting-user.-attributes-on-symlinks-by-.patch"
#     addsrc "${_clearpatchsrc}/0118-add-scheduler-turbo3-patch.patch"
#     addsrc "${_clearpatchsrc}/0120-do-accept-in-LIFO-order-for-cache-efficiency.patch"
#     addsrc "${_clearpatchsrc}/0121-locking-rwsem-spin-faster.patch"
    addsrc "${_clearpatchsrc}/0125-nvme-workaround.patch"
#     addsrc "${_clearpatchsrc}/0128-itmt_epb-use-epb-to-scale-itmt.patch"
#     addsrc "${_clearpatchsrc}/0132-prezero-20220308.patch"
#     addsrc "${_clearpatchsrc}/0131-add-a-per-cpu-minimum-high-watermark-an-tune-batch-s.patch"
fi

export KBUILD_BUILD_HOST=$(hostname -f)
export KBUILD_BUILD_USER=$(whoami)
export KBUILD_BUILD_TIMESTAMP="$(date -Ru${SOURCE_DATE_EPOCH:+d @$SOURCE_DATE_EPOCH})"
export LC_ALL=C

cleanup() {
    exit
}

trap cleanup EXIT

prepare() {
    chmod +x ./configure
    cd ${srcdir}/$_srcname

    echo "Setting version..."
    echo "-$pkgrel" > localversion.10-pkgrel
    echo "${pkgbase#linux}" > localversion.20-pkgname
    make ${BUILD_FLAGS[*]} defconfig
    make ${BUILD_FLAGS[*]} -s kernelrelease > version
    make ${BUILD_FLAGS[*]} mrproper

    local src
    for src in "${source[@]}"; do
        src="${src%%::*}"
        src="${src##*/}"
        [[ $src = *.patch ]] || continue
        echo "Applying patch $src..."
        patch -Np1 < "../$src"
    done

    echo "Setting config..."
    cp ../config .config

    ### Select CPU optimization
    if [ -n "$_processor_opt" ]; then
        MARCH="${_processor_opt^^}"
        MARCH2=M${MARCH}
        scripts/config -k -d CONFIG_GENERIC_CPU
        scripts/config -k -e CONFIG_${MARCH2}
    fi

    ### Use autooptimization
    if [ -n "$_use_auto_optimization" ]; then
        chmod +x "${srcdir}"/auto-cpu-optimization.sh
        "${srcdir}"/auto-cpu-optimization.sh
    fi

    ### Selecting CachyOS config
    if [ -n "$_cachy_config" ]; then
        echo "Enabling CachyOS config..."
        scripts/config -e CACHY
    fi

    ### Selecting the CPU scheduler
    [ -z "$_cpusched" ] && _die "The value is empty. Choose the correct one again."

    case "$_cpusched" in
        pds) scripts/config -e SCHED_ALT -d SCHED_BMQ -e SCHED_PDS -e PSI_DEFAULT_DISABLED;;
        bmq) scripts/config -e SCHED_ALT -e SCHED_BMQ -d SCHED_PDS -e PSI_DEFAULT_DISABLED;;
        tt)  scripts/config -e TT_SCHED -e TT_ACCOUNTING_STATS;;
        bore|hardened|cachyos) scripts/config -e SCHED_BORE;;
        cfs) ;;
        *) _die "The value $_cpusched is invalid. Choose the correct one again.";;
    esac

    echo "Selecting ${_cpusched^^} CPU scheduler..."

    ## Tkg-ify
    if [ -n "$_tkgify" ]; then
        echo "Using linux-tkg default settings..."
        scripts/config --disable DYNAMIC_FAULT \
            --disable DEFAULT_FQ_CODEL \
            --disable WERROR \
            --enable DEFAULT_CAKE \

        scripts/config --disable NTP_PPS \
            --disable CPU_FREQ_DEFAULT_GOV_PERFORMANCE_NODEF \
            --disable ZSWAP_COMPRESSOR_DEFAULT_LZO \
            --disable PROFILE_ALL_BRANCHES

        scripts/config --enable CRYPTO_LZ4 \
            --enable CRYPTO_LZ4HC \
            --enable LZ4_COMPRESS \
            --enable LZ4HC_COMPRESS \
            --enable ZSWAP_COMPRESSOR_DEFAULT_LZ4 \
            --enable CMDLINE_BOOL \
            --enable BLK_DEV_LOOP \
            --enable X86_AMD_PSTATE

        scripts/config --set-str ZSWAP_COMPRESSOR_DEFAULT lz4 \
            --set-str CMDLINE "$_custom_commandline" \
            --set-val NR_CPUS 64

        scripts/config --disable CMDLINE_OVERRIDE \
            --disable X86_P6_NOP \
            --disable CPU_FREQ_DEFAULT_GOV_ONDEMAND \
            --disable CPU_FREQ_DEFAULT_GOV_CONSERVATIVE

        scripts/config -k --module I2C_NCT6775

        # Reset local version string if ever it's in the .config file
        scripts/config --set-str localversion ""

        scripts/config --disable KCSAN \
            --disable INIT_STACK_ALL_PATTERN \
            --enable INIT_ON_FREE_DEFAULT_ON \
            --enable INIT_STACK_ALL_ZERO \
            --disable INIT_STACK_NONE

        if [ "$_cpusched" = "bmq" ]; then
            scripts/config --set-val SCHED_TIMESLICE 2
        fi

        if [ -n "$_ftracedisable" ]; then
            scripts/config --disable FUNCTION_TRACER \
                --disable FUNCTION_GRAPH_TRACER
        fi
    fi

    ### Enable KCFI
    if [ -n "$_use_kcfi" ]; then
        echo "Enabling kCFI"
        scripts/config --enable ARCH_SUPPORTS_CFI_CLANG \
            --enable CFI_CLANG
    fi

    ### Select LLVM level
    [ -z "$_use_llvm_lto" ] && _die "The value is empty. Choose the correct one again."

    case "$_use_llvm_lto" in
        thin) scripts/config -e LTO -e LTO_CLANG -e ARCH_SUPPORTS_LTO_CLANG -e ARCH_SUPPORTS_LTO_CLANG_THIN -d LTO_NONE -e HAS_LTO_CLANG -d LTO_CLANG_FULL -e LTO_CLANG_THIN -e HAVE_GCC_PLUGINS;;
        full) scripts/config -e LTO -e LTO_CLANG -e ARCH_SUPPORTS_LTO_CLANG -e ARCH_SUPPORTS_LTO_CLANG_THIN -d LTO_NONE -e HAS_LTO_CLANG -e LTO_CLANG_FULL -d LTO_CLANG_THIN -e HAVE_GCC_PLUGINS;;
        none) scripts/config -e LTO_NONE;;
        *) _die "The value '$_use_llvm_lto' is invalid. Choose the correct one again.";;
    esac

    echo "Selecting '$_use_llvm_lto' LLVM level..."

    ### Enable GCC FULL LTO
    ### Disable LTO_CP_CLONE, its experimental
    if [ -n "$_use_gcc_lto" ]; then
         scripts/config -e LTO_GCC \
            -d LTO_CP_CLONE
    ### Disable DEBUG, pahole is currently broken with GCC LTO
            _disable_debug=y
    fi

    ### Select tick rate
    [ -z $_HZ_ticks ] && _die "The value is empty. Choose the correct one again."

    case "$_HZ_ticks" in
        100|250|500|600|750|1000)
            scripts/config -d HZ_300 -e "HZ_${_HZ_ticks}" --set-val HZ "${_HZ_ticks}";;
        300)
            scripts/config -e HZ_300 --set-val HZ 300;;
        *)
            _die "The value $_HZ_ticks is invalid. Choose the correct one again."
    esac

    echo "Setting tick rate to ${_HZ_ticks}Hz..."

    ### Disable NUMA
    if [ -n "$_NUMAdisable" ]; then
        echo "Disabling NUMA from kernel config..."
        scripts/config --disable NUMA \
            --disable AMD_NUMA \
            --disable X86_64_ACPI_NUMA \
            --disable NODES_SPAN_OTHER_NODES \
            --disable NUMA_EMU \
            --disable NEED_MULTIPLE_NODES \
            --disable USE_PERCPU_NUMA_NODE_ID \
            --disable ACPI_NUMA \
            --disable ARCH_SUPPORTS_NUMA_BALANCING \
            --disable NODES_SHIFT \
            --undefine NODES_SHIFT \
            --disable NEED_MULTIPLE_NODES
    fi

    ### Setting NR_CPUS
    if [[ "$_nr_cpus" -ge 2 && "$_nr_cpus" -le 512 ]]; then
        echo "Setting custom NR_CPUS..."
        scripts/config --set-val NR_CPUS "$_nr_cpus"
    elif [ -z "$_nr_cpus" ]; then
        echo "Setting default NR_CPUS..."
        scripts/config --set-val NR_CPUS 320
    else
        _die "The value '$_nr_cpus' is invalid. Please select a numerical value from 2 to 512..."
    fi

    ### Disable MQ Deadline I/O scheduler
    if [ -n "$_mq_deadline_disable" ]; then
        echo "Disabling MQ-Deadline I/O scheduler..."
        scripts/config --disable MQ_IOSCHED_DEADLINE
    fi

    ### Disable Kyber I/O scheduler
    if [ -n "$_kyber_disable" ]; then
        echo "Disabling Kyber I/O scheduler..."
        scripts/config --disable MQ_IOSCHED_KYBER
    fi

    ### Select performance governor
    if [ -n "$_per_gov" ]; then
        echo "Setting performance governor..."
        scripts/config --disable CPU_FREQ_DEFAULT_GOV_SCHEDUTIL \
            --enable CPU_FREQ_DEFAULT_GOV_PERFORMANCE
    fi

    ### Select tick type
    [ -z "$_tickrate" ] && _die "The value is empty. Choose the correct one again."

    case "$_tickrate" in
        perodic) scripts/config -d NO_HZ_IDLE -d NO_HZ_FULL -d NO_HZ -d NO_HZ_COMMON -e HZ_PERIODIC;;
        idle) scripts/config -d HZ_PERIODIC -d NO_HZ_FULL -e NO_HZ_IDLE  -e NO_HZ -e NO_HZ_COMMON;;
        full) scripts/config -d HZ_PERIODIC -d NO_HZ_IDLE -d CONTEXT_TRACKING_FORCE -e NO_HZ_FULL_NODEF -e NO_HZ_FULL -e NO_HZ -e NO_HZ_COMMON -e CONTEXT_TRACKING;;
        *) _die "The value '$_tickrate' is invalid. Choose the correct one again.";;
    esac

    echo "Selecting '$_tickrate' tick type..."

        ### Select preempt type
    [ -z "$_preempt" ] && _die "The value is empty. Choose the correct one again."

    case "$_preempt" in
        full) scripts/config -e PREEMPT_BUILD -d PREEMPT_NONE -d PREEMPT_VOLUNTARY -e PREEMPT -e PREEMPT_COUNT -e PREEMPTION -e PREEMPT_DYNAMIC;;
        voluntary) scripts/config -e PREEMPT_BUILD -d PREEMPT_NONE -e PREEMPT_VOLUNTARY -d PREEMPT -e PREEMPT_COUNT -e PREEMPTION -d PREEMPT_DYNAMIC;;
        server) scripts/config -e PREEMPT_NONE_BUILD -e PREEMPT_NONE -d PREEMPT_VOLUNTARY -d PREEMPT -d PREEMPTION -d PREEMPT_DYNAMIC;;
        *) _die "The value '$_preempt' is invalid. Choose the correct one again.";;
    esac

    echo "Selecting '$_preempt' preempt type..."

    ### Enable O3
    if [ -n "$_cc_harder" ]; then
        echo "Enabling KBUILD_CFLAGS -O3..."
        scripts/config --disable CC_OPTIMIZE_FOR_PERFORMANCE \
            --enable CC_OPTIMIZE_FOR_PERFORMANCE_O3
    fi

    ### Enable Os
    if [ -n "$_cc_size" ] && [ -z "$_cc_harder" ]; then
        echo "Enabling KBUILD_CFLAGS -Os..."
        scripts/config -d CC_OPTIMIZE_FOR_PERFORMANCE \
            -e CONFIG_CC_OPTIMIZE_FOR_SIZE
    fi

    ### Enable bbr2
    if [ -n "$_tcp_bbr2" ]; then
        echo "Disabling TCP_CONG_CUBIC..."
        scripts/config --module TCP_CONG_CUBIC \
            --disable DEFAULT_CUBIC \
            --enable TCP_CONG_BBR2 \
            --enable DEFAULT_BBR2 \
            --set-str DEFAULT_TCP_CONG bbr2
    fi

    ### Select LRU config
    [ -z "$_lru_config" ] && _die "The value is empty. Choose the correct one again."

    case "$_lru_config" in
        standard) scripts/config -e LRU_GEN -e LRU_GEN_ENABLED -d LRU_GEN_STATS;;
        stats) scripts/config -e LRU_GEN -e LRU_GEN_ENABLED -e LRU_GEN_STATS;;
        none) scripts/config -d LRU_GEN;;
        *) _die "The value '$_lru_config' is invalid. Choose the correct one again.";;
    esac

    echo "Selecting '$_lru_config' LRU_GEN config..."

    ### Select VMA config
    [ -z "$_vma_config" ] && _die "The value is empty. Choose the correct one again."

    case "$_vma_config" in
        standard) scripts/config -e PER_VMA_LOCK -d PER_VMA_LOCK_STATS;;
        stats) scripts/config -e PER_VMA_LOCK -e PER_VMA_LOCK_STATS;;
        none) scripts/config -d PER_VMA_LOCK;;
        *) _die "The value '$_vma_config' is invalid. Choose the correct one again.";;
    esac

    echo "Selecting '$_vma_config' PER_VMA_LOCK config..."

    ### Select THP
    [ -z "$_hugepage" ] && _die "The value is empty. Choose the correct one again."

    case "$_hugepage" in
        always) scripts/config -d TRANSPARENT_HUGEPAGE_MADVISE -e TRANSPARENT_HUGEPAGE_ALWAYS;;
        madvise) scripts/config -d TRANSPARENT_HUGEPAGE_ALWAYS -e TRANSPARENT_HUGEPAGE_MADVISE;;
        *) _die "The value '$_hugepage' is invalid. Choose the correct one again.";;
    esac

    echo "Selecting '$_hugepage' TRANSPARENT_HUGEPAGE config..."

    ### Enable DAMON
    if [ -n "$_damon" ]; then
        echo "Enabling DAMON..."
        scripts/config --enable DAMON \
            --enable DAMON_VADDR \
            --enable DAMON_DBGFS \
            --enable DAMON_SYSFS \
            --enable DAMON_PADDR \
            --enable DAMON_RECLAIM \
            --enable DAMON_LRU_SORT
    fi

    ### Enable LRNG
    if [ -n "$_lrng_enable" ]; then
        echo "Enabling Linux Random Number Generator ..."
        scripts/config -d RANDOM_DEFAULT_IMPL \
            -e LRNG \
            -e LRNG_SHA256 \
            -e LRNG_COMMON_DEV_IF \
            -e LRNG_DRNG_ATOMIC \
            -e LRNG_SYSCTL \
            -e LRNG_RANDOM_IF \
            -e LRNG_AIS2031_NTG1_SEEDING_STRATEGY \
            -m LRNG_KCAPI_IF \
            -m LRNG_HWRAND_IF \
            -e LRNG_DEV_IF \
            -e LRNG_RUNTIME_ES_CONFIG \
            -e LRNG_IRQ_DFLT_TIMER_ES \
            -d LRNG_SCHED_DFLT_TIMER_ES \
            -e LRNG_TIMER_COMMON \
            -d LRNG_COLLECTION_SIZE_256 \
            -d LRNG_COLLECTION_SIZE_512 \
            -e LRNG_COLLECTION_SIZE_1024 \
            -d LRNG_COLLECTION_SIZE_2048 \
            -d LRNG_COLLECTION_SIZE_4096 \
            -d LRNG_COLLECTION_SIZE_8192 \
            --set-val LRNG_COLLECTION_SIZE 1024 \
            -e LRNG_HEALTH_TESTS \
            --set-val LRNG_RCT_CUTOFF 31 \
            --set-val LRNG_APT_CUTOFF 325 \
            -e LRNG_IRQ \
            -e LRNG_CONTINUOUS_COMPRESSION_ENABLED \
            -d LRNG_CONTINUOUS_COMPRESSION_DISABLED \
            -e LRNG_ENABLE_CONTINUOUS_COMPRESSION \
            -e LRNG_SWITCHABLE_CONTINUOUS_COMPRESSION \
            --set-val LRNG_IRQ_ENTROPY_RATE 256 \
            -e LRNG_JENT \
            --set-val LRNG_JENT_ENTROPY_RATE 16 \
            -e LRNG_CPU \
            --set-val LRNG_CPU_FULL_ENT_MULTIPLIER 1 \
            --set-val LRNG_CPU_ENTROPY_RATE 8 \
            -e LRNG_SCHED \
            --set-val LRNG_SCHED_ENTROPY_RATE 4294967295 \
            -e LRNG_DRNG_CHACHA20 \
            -m LRNG_DRBG \
            -m LRNG_DRNG_KCAPI \
            -e LRNG_SWITCH \
            -e LRNG_SWITCH_HASH \
            -m LRNG_HASH_KCAPI \
            -e LRNG_SWITCH_DRNG \
            -m LRNG_SWITCH_DRBG \
            -m LRNG_SWITCH_DRNG_KCAPI \
            -e LRNG_DFLT_DRNG_CHACHA20 \
            -d LRNG_DFLT_DRNG_DRBG \
            -d LRNG_DFLT_DRNG_KCAPI \
            -e LRNG_TESTING_MENU \
            -d LRNG_RAW_HIRES_ENTROPY \
            -d LRNG_RAW_JIFFIES_ENTROPY \
            -d LRNG_RAW_IRQ_ENTROPY \
            -d LRNG_RAW_RETIP_ENTROPY \
            -d LRNG_RAW_REGS_ENTROPY \
            -d LRNG_RAW_ARRAY \
            -d LRNG_IRQ_PERF \
            -d LRNG_RAW_SCHED_HIRES_ENTROPY \
            -d LRNG_RAW_SCHED_PID_ENTROPY \
            -d LRNG_RAW_SCHED_START_TIME_ENTROPY \
            -d LRNG_RAW_SCHED_NVCSW_ENTROPY \
            -d LRNG_SCHED_PERF \
            -d LRNG_ACVT_HASH \
            -d LRNG_RUNTIME_MAX_WO_RESEED_CONFIG \
            -d LRNG_TEST_CPU_ES_COMPRESSION \
            -e LRNG_SELFTEST \
            -d LRNG_SELFTEST_PANIC \
            -d LRNG_RUNTIME_FORCE_SEEDING_DISABLE
    fi

    ### Enable ZSTD swap/zram compression
    if [ -n "$_zstd_compression" ]; then
        echo "Enabling zram/swap ZSTD compression..."
        scripts/config --disable CONFIG_ZRAM_DEF_COMP_LZORLE \
            --enable CONFIG_ZRAM_DEF_COMP_ZSTD \
            --set-str CONFIG_ZRAM_DEF_COMP zstd \
            --disable CONFIG_ZSWAP_COMPRESSOR_DEFAULT_LZ4 \
            --enable CONFIG_ZSWAP_COMPRESSOR_DEFAULT_ZSTD \
            --set-str CONFIG_ZSWAP_COMPRESSOR_DEFAULT zstd \
            --enable CONFIG_ZRAM_ENTROPY \
            --set-val CONFIG_ZRAM_ENTROPY_THRESHOLD 100000
    fi

    ### Selecting the ZSTD modules and kernel compression level
    [ -z "$_zstd_level_value" ] && _die "The value is empty. Choose the correct one again."

    case "$_zstd_level_value" in
        ultra) scripts/config --set-val MODULE_COMPRESS_ZSTD_LEVEL 19 -e MODULE_COMPRESS_ZSTD_ULTRA --set-val MODULE_COMPRESS_ZSTD_LEVEL_ULTRA 22 --set-val ZSTD_COMPRESSION_LEVEL 22;;
        normal) scripts/config --set-val MODULE_COMPRESS_ZSTD_LEVEL 9 -d MODULE_COMPRESS_ZSTD_ULTRA --set-val ZSTD_COMPRESSION_LEVEL 19;;
        *) _die "The value '$_zstd_level_value' is invalid. Choose the correct one again.";;
    esac

    echo "Selecting '$_zstd_level_value' ZSTD modules and kernel compression level..."

    ### Disable DEBUG
    if [ -n "$_disable_debug" ]; then
        echo "Disabling debugging..."
        scripts/config --disable DEBUG_INFO \
            --disable DEBUG_INFO_BTF \
            --disable DEBUG_INFO_DWARF4 \
            --disable DEBUG_INFO_DWARF5 \
            --disable PAHOLE_HAS_SPLIT_BTF \
            --disable DEBUG_INFO_BTF_MODULES \
            --disable SLUB_DEBUG \
            --disable PM_DEBUG \
            --disable PM_ADVANCED_DEBUG \
            --disable PM_SLEEP_DEBUG \
            --disable ACPI_DEBUG \
            --disable SCHED_DEBUG \
            --disable LATENCYTOP \
            --disable DEBUG_PREEMPT
    fi

    ### Enable binder & ashmem
    if [ -n "$_anbox" ]; then
        echo "Enabling Anbox support (binder & ashmem)..."
        scripts/config --enable ASHMEM \
            --enable ION \
            --enable ION_CMA_HEAP \
            --enable ANDROID \
            --enable ANDROID_BINDER_IPC \
            --enable ANDROID_BINDERFS \
            --disable ION_SYSTEM_HEAP \
            --disable ANDROID_BINDER_IPC_SELFTEST \
            --set-str ANDROID_BINDER_DEVICES binder,hwbinder,vndbinder
    fi

    echo "Enable USER_NS_UNPRIVILEGED"
    scripts/config -e USER_NS
    echo "Enabling WINE FASTSYNC"
    scripts/config --enable WINESYNC

    ### Optionally use running kernel's config
    # code originally by nous; http://aur.archlinux.org/packages.php?ID=40191
    if [ -n "$_use_current" ]; then
        if [[ -s /proc/config.gz ]]; then
            echo "Extracting config from /proc/config.gz..."
            # modprobe configs
            zcat /proc/config.gz > ./.config
        else
            warning "Your kernel was not compiled with IKPROC!"
            warning "You cannot read the current config!"
            warning "Aborting!"
            exit
        fi
    fi


    ### Optionally load needed modules for the make localmodconfig
    # See https://aur.archlinux.org/packages/modprobed-db
    if [ -n "$_localmodcfg" ]; then
        if [ -e $HOME/.config/modprobed.db ]; then
            echo "Running Steven Rostedt's make localmodconfig now"
            make ${BUILD_FLAGS[*]} LSMOD=$HOME/.config/modprobed.db localmodconfig
        else
            echo "No modprobed.db data found"
            exit
        fi
    fi

    if [ "$_noccache" != "true" ] && pacman -Qq ccache &> /dev/null; then
        export PATH="/usr/lib/ccache/bin/:$PATH"
        export CCACHE_SLOPPINESS="file_macro,locale,time_macros"
        export CCACHE_NOHASHDIR="true"
        echo "ccache was found and will be used"
    fi

    ### Rewrite configuration
    echo "Rewrite configuration..."
    _make ${BUILD_FLAGS[*]} prepare
    yes "" | _make ${BUILD_FLAGS[*]} config >/dev/null
    diff -u ../config .config || :

    ### Prepared version
    echo "Prepared $pkgbase version $(<version)"

    ### Running make nconfig
    [[ -z "$_makenconfig" ]] ||  make ${BUILD_FLAGS[*]} nconfig

    ### Running make menuconfig
    [[ -z "$_makemenuconfig" ]] ||  make ${BUILD_FLAGS[*]} menuconfig

    ### Running make xconfig
    [[ -z "$_makexconfig" ]] ||  make ${BUILD_FLAGS[*]} xconfig

    ### Running make gconfig
    [[ -z "$_makegconfig" ]] ||  make ${BUILD_FLAGS[*]} gconfig

    ### Save configuration for later reuse
    echo "Save configuration for later reuse..."
    cat .config > "${startdir}/config-${pkgver}-${pkgrel}${pkgbase#linux}"

}

build() {
    cd ${srcdir}/${_srcname}

    # $(($(nproc) / 3 * 2)) so it doesn't crash on my machine
    make ${BUILD_FLAGS[*]} -j$(($(nproc) / 3 * 2)) all

    if [ -n "$_build_zfs" ]; then
        cd ${srcdir}/"zfs"

        if [ -n "$_use_llvm_lto" ]; then
            ./autogen.sh
            sed -i "s|\$(uname -r)|${pkgver}-${pkgsuffix}|g" configure
            ./configure KERNEL_LLVM=1 --prefix=/usr --sysconfdir=/etc --sbindir=/usr/bin --libdir=/usr/lib \
                --datadir=/usr/share --includedir=/usr/include --with-udevdir=/lib/udev \
                --libexecdir=/usr/lib/zfs --with-config=kernel \
                --with-linux=${srcdir}/$_srcname
        else
            ./autogen.sh
            sed -i "s|\$(uname -r)|${pkgver}-${pkgsuffix}|g" configure
            ./configure --prefix=/usr --sysconfdir=/etc --sbindir=/usr/bin --libdir=/usr/lib \
                --datadir=/usr/share --includedir=/usr/include --with-udevdir=/lib/udev \
                --libexecdir=/usr/lib/zfs --with-config=kernel \
                --with-linux=${srcdir}/$_srcname
        fi
        make ${BUILD_FLAGS[*]}
    fi
}

_package() {
    pkgdesc="The $pkgdesc kernel and modules"
    depends=('coreutils' 'kmod' 'initramfs')
    optdepends=('wireless-regdb: to set the correct wireless channels of your country'
                'linux-firmware: firmware images needed for some devices'
                'modprobed-db: Keeps track of EVERY kernel module that has ever been probed - useful for those of us who make localmodconfig'
                'uksmd: Userspace KSM helper daemon')
    provides=(VIRTUALBOX-GUEST-MODULES WIREGUARD-MODULE KSMBD-MODULE UKSMD-BUILTIN)

    cd ${srcdir}/$_srcname

    local modulesdir="$pkgdir/usr/lib/modules/$(<version)"

    echo "Installing boot image..."
    # systemd expects to find the kernel here to allow hibernation
    # https://github.com/systemd/systemd/commit/edda44605f06a41fb86b7ab8128dcf99161d2344
    install -Dm644 "$(_make -s image_name)" "$modulesdir/vmlinuz"

    # Used by mkinitcpio to name the kernel
    echo "$pkgbase" | install -Dm644 /dev/stdin "$modulesdir/pkgbase"

    echo "Installing modules..."
    _make INSTALL_MOD_PATH="$pkgdir/usr" INSTALL_MOD_STRIP=1 \
        DEPMOD=/doesnt/exist  modules_install  # Suppress depmod

    # remove build and source links
    rm "$modulesdir"/{source,build}
}

_package-headers() {
    pkgdesc="Headers and scripts for building modules in $pkgbase"
    depends=('pahole' linux-${pkgsuffix} )

    cd ${srcdir}/${_srcname}
    local builddir="$pkgdir/usr/lib/modules/$(<version)/build"

    echo "Installing build files..."
    install -Dt "$builddir" -m644 .config Makefile Module.symvers System.map \
        localversion.* version vmlinux
    install -Dt "$builddir/kernel" -m644 kernel/Makefile
    install -Dt "$builddir/arch/x86" -m644 arch/x86/Makefile
    cp -t "$builddir" -a scripts

    # required when STACK_VALIDATION is enabled
    install -Dt "$builddir/tools/objtool" tools/objtool/objtool

    # required when DEBUG_INFO_BTF_MODULES is enabled
    if [ -f tools/bpf/resolve_btfids/resolve_btfids ]; then
        install -Dt "$builddir/tools/bpf/resolve_btfids" tools/bpf/resolve_btfids/resolve_btfids
    fi

    echo "Installing headers..."
    cp -t "$builddir" -a include
    cp -t "$builddir/arch/x86" -a arch/x86/include
    install -Dt "$builddir/arch/x86/kernel" -m644 arch/x86/kernel/asm-offsets.s

    install -Dt "$builddir/drivers/md" -m644 drivers/md/*.h
    install -Dt "$builddir/net/mac80211" -m644 net/mac80211/*.h

    # https://bugs.archlinux.org/task/13146
    install -Dt "$builddir/drivers/media/i2c" -m644 drivers/media/i2c/msp3400-driver.h

    # https://bugs.archlinux.org/task/20402
    install -Dt "$builddir/drivers/media/usb/dvb-usb" -m644 drivers/media/usb/dvb-usb/*.h
    install -Dt "$builddir/drivers/media/dvb-frontends" -m644 drivers/media/dvb-frontends/*.h
    install -Dt "$builddir/drivers/media/tuners" -m644 drivers/media/tuners/*.h

    # https://bugs.archlinux.org/task/71392
    install -Dt "$builddir/drivers/iio/common/hid-sensors" -m644 drivers/iio/common/hid-sensors/*.h

    echo "Installing KConfig files..."
    find . -name 'Kconfig*' -exec install -Dm644 {} "$builddir/{}" \;

    echo "Removing unneeded architectures..."
    local arch
    for arch in "$builddir"/arch/*/; do
        [[ $arch = */x86/ ]] && continue
        echo "Removing $(basename "$arch")"
        rm -r "$arch"
    done

    echo "Removing documentation..."
    rm -r "$builddir/Documentation"

    echo "Removing broken symlinks..."
    find -L "$builddir" -type l -printf 'Removing %P\n' -delete

    echo "Removing loose objects..."
    find "$builddir" -type f -name '*.o' -printf 'Removing %P\n' -delete

    echo "Stripping build tools..."
    local file
    while read -rd '' file; do
        case "$(file -Sib "$file")" in
            application/x-sharedlib\;*)      # Libraries (.so)
                strip -v $STRIP_SHARED "$file" ;;
            application/x-archive\;*)        # Libraries (.a)
                strip -v $STRIP_STATIC "$file" ;;
            application/x-executable\;*)     # Binaries
                strip -v $STRIP_BINARIES "$file" ;;
            application/x-pie-executable\;*) # Relocatable binaries
                strip -v $STRIP_SHARED "$file" ;;
        esac
    done < <(find "$builddir" -type f -perm -u+x ! -name vmlinux -print0)

    echo "Stripping vmlinux..."
    strip -v $STRIP_STATIC "$builddir/vmlinux"

    echo "Adding symlink..."
    mkdir -p "$pkgdir/usr/src"
    ln -sr "$builddir" "$pkgdir/usr/src/$pkgbase"
}

_package-zfs(){
    pkgdesc="zfs module for the $pkgdesc kernel"
    depends=('pahole' linux-$pkgsuffix=$_kernver)

    cd ${srcdir}/"zfs"
	install -dm755 "$pkgdir/usr/lib/modules/${_major}.${_minor}-${_rcver}-${pkgrel}-${pkgsuffix}"
	install -m644 module/*/*.ko "$pkgdir/usr/lib/modules/${_major}.${_minor}-${_rcver}-${pkgrel}-${pkgsuffix}"
    find "$pkgdir" -name '*.ko' -exec zstd --rm -10 {} +
    #  sed -i -e "s/EXTRAMODULES='.*'/EXTRAMODULES='${pkgver}-${pkgbase}'/" "$startdir/zfs.install"
}

pkgname=("$pkgbase" "$pkgbase-headers")
if [ -n "$_build_zfs" ]; then
    pkgname+=("$pkgbase-zfs")
fi
for _p in "${pkgname[@]}"; do
    eval "package_$_p() {
    $(declare -f "_package${_p#$pkgbase}")
    _package${_p#$pkgbase}
    }"
done
