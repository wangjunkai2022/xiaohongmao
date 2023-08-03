.class public abstract Lcom/qennnsad/aknkaksd/presentation/module/auth/login/s$a;
.super Ljava/lang/Object;
.source "LoginViewModel_HiltModules.java"


# annotations
.annotation runtime Ld6/h;
.end annotation

.annotation build Ldagger/hilt/e;
    value = {
        Lf6/f;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/module/auth/login/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;)Landroidx/lifecycle/ViewModel;
    .annotation runtime Ld6/a;
    .end annotation

    .annotation runtime Ld7/d;
    .end annotation

    .annotation runtime Ld7/h;
        value = "com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel"
    .end annotation

    .annotation build Ldagger/hilt/android/internal/lifecycle/d;
    .end annotation
.end method
