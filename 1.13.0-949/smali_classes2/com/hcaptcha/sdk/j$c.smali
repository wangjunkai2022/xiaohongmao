.class Lcom/hcaptcha/sdk/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hcaptcha/sdk/j;->onLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hcaptcha/sdk/j;


# direct methods
.method public constructor <init>(Lcom/hcaptcha/sdk/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hcaptcha/sdk/j$c;->a:Lcom/hcaptcha/sdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hcaptcha/sdk/j$c;->a:Lcom/hcaptcha/sdk/j;

    invoke-static {v0}, Lcom/hcaptcha/sdk/j;->a(Lcom/hcaptcha/sdk/j;)Lcom/hcaptcha/sdk/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/hcaptcha/sdk/tasks/b;->N()V

    return-void
.end method
