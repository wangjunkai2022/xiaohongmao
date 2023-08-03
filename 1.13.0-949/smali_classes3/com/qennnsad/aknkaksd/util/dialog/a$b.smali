.class Lcom/qennnsad/aknkaksd/util/dialog/a$b;
.super Landroid/text/style/ClickableSpan;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/dialog/a;->c(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/style/URLSpan;


# direct methods
.method constructor <init>(Landroid/text/style/URLSpan;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$b;->a:Landroid/text/style/URLSpan;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/a$b;->a:Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    const-string v0, "URL-click:"

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
