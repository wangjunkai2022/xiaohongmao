.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/r$b;
.super Ljava/lang/Object;
.source "SignUpViewModel_HiltModules.java"


# annotations
.annotation runtime Ld6/h;
.end annotation

.annotation build Ldagger/hilt/e;
    value = {
        Lf6/b;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1
    .annotation runtime Ld6/i;
    .end annotation

    .annotation runtime Ld7/e;
    .end annotation

    .annotation build Ldagger/hilt/android/internal/lifecycle/d$a;
    .end annotation

    const-string v0, "com.qennnsad.aknkaksd.presentation.module.auth.signup.SignUpViewModel"

    return-object v0
.end method
