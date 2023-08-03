.class Lcom/tangxiaolv/telegramgallery/o$m;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/o;->U0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/o;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/o;I)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$m;->b:Lcom/tangxiaolv/telegramgallery/o;

    iput p2, p0, Lcom/tangxiaolv/telegramgallery/o$m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$m;->b:Lcom/tangxiaolv/telegramgallery/o;

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/o$m;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/o;->h0(Lcom/tangxiaolv/telegramgallery/o;I)V

    return-void
.end method
