.class public Ltv/cjump/jni/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/cjump/jni/DeviceUtils$ARCH;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "x86"

.field public static final b:Ljava/lang/String; = "mips"

.field private static c:Ltv/cjump/jni/DeviceUtils$ARCH; = null

.field private static final d:I = 0x28

.field private static final e:I = 0x3

.field private static final f:I = 0x8

.field private static final g:I = 0xb7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ltv/cjump/jni/DeviceUtils$ARCH;->Unknown:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v0, Ltv/cjump/jni/DeviceUtils;->c:Ltv/cjump/jni/DeviceUtils$ARCH;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ltv/cjump/jni/DeviceUtils$ARCH;
    .locals 6

    const-class v0, Ltv/cjump/jni/DeviceUtils;

    monitor-enter v0

    const/16 v1, 0x14

    :try_start_0
    new-array v1, v1, [B

    .line 1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "lib/libc.so"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    .line 3
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/16 v2, 0x13

    aget-byte v2, v1, v2

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    const/16 v5, 0x12

    aget-byte v1, v1, v5

    or-int/2addr v1, v2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_2

    const/16 v2, 0x28

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb7

    if-eq v1, v2, :cond_0

    const-string v2, "NativeBitmapFactory"

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "libc.so is unknown arch: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Ltv/cjump/jni/DeviceUtils$ARCH;->ARM64:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v1, Ltv/cjump/jni/DeviceUtils;->c:Ltv/cjump/jni/DeviceUtils$ARCH;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Ltv/cjump/jni/DeviceUtils$ARCH;->ARM:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v1, Ltv/cjump/jni/DeviceUtils;->c:Ltv/cjump/jni/DeviceUtils$ARCH;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Ltv/cjump/jni/DeviceUtils$ARCH;->MIPS:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v1, Ltv/cjump/jni/DeviceUtils;->c:Ltv/cjump/jni/DeviceUtils$ARCH;

    goto :goto_0

    .line 9
    :cond_3
    sget-object v1, Ltv/cjump/jni/DeviceUtils$ARCH;->X86:Ltv/cjump/jni/DeviceUtils$ARCH;

    sput-object v1, Ltv/cjump/jni/DeviceUtils;->c:Ltv/cjump/jni/DeviceUtils$ARCH;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catch_0
    move-exception v1

    .line 11
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_0
    move-exception v1

    move-object v3, v4

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v3, v4

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v3, v4

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    .line 12
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_5

    .line 13
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    .line 14
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_5

    .line 15
    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_1

    :goto_4
    if-eqz v3, :cond_4

    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    :catch_7
    move-exception v2

    .line 16
    :try_start_a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 17
    :cond_4
    :goto_5
    throw v1

    .line 18
    :cond_5
    :goto_6
    sget-object v1, Ltv/cjump/jni/DeviceUtils;->c:Ltv/cjump/jni/DeviceUtils$ARCH;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    monitor-exit v0

    return-object v1

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v2, "CPU_ABI2"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_1

    return-object v0

    .line 4
    :cond_1
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static d()Z
    .locals 2

    .line 1
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->a()Ltv/cjump/jni/DeviceUtils$ARCH;

    move-result-object v0

    .line 2
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->l()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ltv/cjump/jni/DeviceUtils$ARCH;->X86:Ltv/cjump/jni/DeviceUtils$ARCH;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e()Z
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "MagicBox"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f()Z
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "Xiaomi"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dredd"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static g()Z
    .locals 1

    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static h()Z
    .locals 2

    .line 1
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->a()Ltv/cjump/jni/DeviceUtils$ARCH;

    move-result-object v0

    const-string v1, "armeabi-v7a"

    .line 2
    invoke-static {v1}, Ltv/cjump/jni/DeviceUtils;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "armeabi"

    invoke-static {v1}, Ltv/cjump/jni/DeviceUtils;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Ltv/cjump/jni/DeviceUtils$ARCH;->ARM:Ltv/cjump/jni/DeviceUtils$ARCH;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static i()Z
    .locals 2

    .line 1
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->a()Ltv/cjump/jni/DeviceUtils$ARCH;

    move-result-object v0

    const-string v1, "x86"

    .line 2
    invoke-static {v1}, Ltv/cjump/jni/DeviceUtils;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ltv/cjump/jni/DeviceUtils$ARCH;->X86:Ltv/cjump/jni/DeviceUtils$ARCH;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->c()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static k()Z
    .locals 1

    const-string v0, "mips"

    invoke-static {v0}, Ltv/cjump/jni/DeviceUtils;->j(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static l()Z
    .locals 1

    const-string v0, "x86"

    invoke-static {v0}, Ltv/cjump/jni/DeviceUtils;->j(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
