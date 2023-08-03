.class Lcom/clj/fastble/scan/a$e;
.super Ljava/lang/Object;
.source "BleScanPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clj/fastble/scan/a;->h(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/clj/fastble/scan/a;


# direct methods
.method constructor <init>(Lcom/clj/fastble/scan/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/scan/a$e;->b:Lcom/clj/fastble/scan/a;

    iput-boolean p2, p0, Lcom/clj/fastble/scan/a$e;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/clj/fastble/scan/a$e;->b:Lcom/clj/fastble/scan/a;

    iget-boolean v1, p0, Lcom/clj/fastble/scan/a$e;->a:Z

    invoke-virtual {v0, v1}, Lcom/clj/fastble/scan/a;->l(Z)V

    return-void
.end method
