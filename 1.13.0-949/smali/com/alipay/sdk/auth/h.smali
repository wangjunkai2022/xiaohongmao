.class final Lcom/alipay/sdk/auth/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/auth/g;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/auth/g;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/auth/h;->a:Lcom/alipay/sdk/auth/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/alipay/sdk/auth/h;->a:Lcom/alipay/sdk/auth/g;

    iget-object p2, p2, Lcom/alipay/sdk/auth/g;->b:Lcom/alipay/sdk/auth/AuthActivity$b;

    iget-object p2, p2, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/alipay/sdk/auth/AuthActivity;->f(Lcom/alipay/sdk/auth/AuthActivity;Z)Z

    .line 2
    iget-object p2, p0, Lcom/alipay/sdk/auth/h;->a:Lcom/alipay/sdk/auth/g;

    iget-object p2, p2, Lcom/alipay/sdk/auth/g;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
