.class Lcom/clj/fastble/scan/a$c;
.super Ljava/lang/Object;
.source "BleScanPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clj/fastble/scan/a;->d(Lcom/clj/fastble/data/BleDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/clj/fastble/data/BleDevice;

.field final synthetic b:Lcom/clj/fastble/scan/a;


# direct methods
.method constructor <init>(Lcom/clj/fastble/scan/a;Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/scan/a$c;->b:Lcom/clj/fastble/scan/a;

    iput-object p2, p0, Lcom/clj/fastble/scan/a$c;->a:Lcom/clj/fastble/data/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/clj/fastble/scan/a$c;->b:Lcom/clj/fastble/scan/a;

    iget-object v1, p0, Lcom/clj/fastble/scan/a$c;->a:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0, v1}, Lcom/clj/fastble/scan/a;->m(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method
