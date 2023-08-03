.class Lcom/tangxiaolv/telegramgallery/n$a;
.super Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;
.source "PhotoPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/n;->r(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/n;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/n;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$a;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/a$e;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$a;->a:Lcom/tangxiaolv/telegramgallery/n;

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->t()V

    :cond_0
    return-void
.end method
