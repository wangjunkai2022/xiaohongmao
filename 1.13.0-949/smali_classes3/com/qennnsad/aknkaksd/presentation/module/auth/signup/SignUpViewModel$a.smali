.class final Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SignUpViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->C(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.qennnsad.aknkaksd.presentation.module.auth.signup.SignUpViewModel"
    f = "SignUpViewModel.kt"
    i = {
        0x0
    }
    l = {
        0x7c
    }
    m = "getGraphCaptchaImage"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

.field d:I


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;->d:I

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel$a;->c:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    invoke-static {p1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;->t(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
