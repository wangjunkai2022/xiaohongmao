.class final Lcom/alipay/sdk/auth/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/auth/AuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/auth/AuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/auth/f;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/auth/f;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/auth/AuthActivity;->p(Lcom/alipay/sdk/auth/AuthActivity;)V

    return-void
.end method
