.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/hcaptcha/sdk/tasks/a;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/e;->a:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final J(Lcom/hcaptcha/sdk/HCaptchaException;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/e;->a:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/g;->a(Lkotlin/jvm/functions/Function2;Lcom/hcaptcha/sdk/HCaptchaException;)V

    return-void
.end method
