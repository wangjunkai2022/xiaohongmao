.class public Lcom/hcaptcha/sdk/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hcaptcha/sdk/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/hcaptcha/sdk/l;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    iget-object v0, p0, Lcom/hcaptcha/sdk/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/hcaptcha/sdk/l;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
