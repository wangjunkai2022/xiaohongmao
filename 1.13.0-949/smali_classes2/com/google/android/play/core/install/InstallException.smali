.class public Lcom/google/android/play/core/install/InstallException;
.super Lcom/google/android/play/core/tasks/zzj;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final a:I
    .annotation build Ld3/c;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1    # I
        .annotation build Ld3/c;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ld3/f;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Install Error(%d): %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/play/core/tasks/zzj;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/play/core/install/InstallException;->a:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "errorCode should not be 0."

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1
    .annotation build Ld3/c;
    .end annotation

    iget v0, p0, Lcom/google/android/play/core/install/InstallException;->a:I

    return v0
.end method
