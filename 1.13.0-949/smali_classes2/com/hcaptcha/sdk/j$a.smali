.class Lcom/hcaptcha/sdk/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hcaptcha/sdk/j;->onPass(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/hcaptcha/sdk/j;


# direct methods
.method public constructor <init>(Lcom/hcaptcha/sdk/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hcaptcha/sdk/j$a;->b:Lcom/hcaptcha/sdk/j;

    iput-object p2, p0, Lcom/hcaptcha/sdk/j$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hcaptcha/sdk/j$a;->b:Lcom/hcaptcha/sdk/j;

    invoke-static {v0}, Lcom/hcaptcha/sdk/j;->a(Lcom/hcaptcha/sdk/j;)Lcom/hcaptcha/sdk/p;

    move-result-object v0

    iget-object v1, p0, Lcom/hcaptcha/sdk/j$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/hcaptcha/sdk/tasks/d;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
