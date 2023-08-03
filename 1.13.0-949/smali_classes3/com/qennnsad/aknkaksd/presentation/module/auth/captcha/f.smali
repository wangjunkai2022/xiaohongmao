.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/hcaptcha/sdk/tasks/d;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/f;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/f;->a:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/hcaptcha/sdk/l;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/g;->b(Lkotlin/jvm/functions/Function1;Lcom/hcaptcha/sdk/l;)V

    return-void
.end method
