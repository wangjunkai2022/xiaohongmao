.class Lcom/clj/fastble/scan/a$b;
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
.field final synthetic a:Lcom/clj/fastble/scan/a;


# direct methods
.method constructor <init>(Lcom/clj/fastble/scan/a;)V
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/scan/a$b;->a:Lcom/clj/fastble/scan/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/clj/fastble/scan/c;->b()Lcom/clj/fastble/scan/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/scan/c;->g()V

    return-void
.end method
