.class Lcom/clj/fastble/bluetooth/d$a;
.super Landroid/os/Handler;
.source "SplitWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clj/fastble/bluetooth/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/clj/fastble/bluetooth/d;


# direct methods
.method constructor <init>(Lcom/clj/fastble/bluetooth/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/bluetooth/d$a;->a:Lcom/clj/fastble/bluetooth/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x33

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/d$a;->a:Lcom/clj/fastble/bluetooth/d;

    invoke-static {p1}, Lcom/clj/fastble/bluetooth/d;->a(Lcom/clj/fastble/bluetooth/d;)V

    :cond_0
    return-void
.end method
