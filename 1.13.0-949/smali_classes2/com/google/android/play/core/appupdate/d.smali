.class public abstract Lcom/google/android/play/core/appupdate/d;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/core/appupdate/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(I)Lcom/google/android/play/core/appupdate/d;
    .locals 0
    .param p0    # I
        .annotation build Ld3/b;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/google/android/play/core/appupdate/d;->d(I)Lcom/google/android/play/core/appupdate/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/d$a;->a()Lcom/google/android/play/core/appupdate/d;

    move-result-object p0

    return-object p0
.end method

.method public static d(I)Lcom/google/android/play/core/appupdate/d$a;
    .locals 1
    .param p0    # I
        .annotation build Ld3/b;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/play/core/appupdate/y;

    invoke-direct {v0}, Lcom/google/android/play/core/appupdate/y;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/appupdate/y;->c(I)Lcom/google/android/play/core/appupdate/d$a;

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/play/core/appupdate/d$a;->b(Z)Lcom/google/android/play/core/appupdate/d$a;

    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()I
    .annotation build Ld3/b;
    .end annotation
.end method
