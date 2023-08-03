.class public final Lcom/qennnsad/aknkaksd/util/toast/CustomToast;
.super Landroid/widget/Toast;
.source "CustomToast.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;,
        Lcom/qennnsad/aknkaksd/util/toast/CustomToast$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0002\n\u000bB#\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/toast/CustomToast;",
        "Landroid/widget/Toast;",
        "Landroid/content/Context;",
        "context",
        "",
        "message",
        "Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;",
        "type",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;)V",
        "a",
        "Type",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a06b3

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget-object p2, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->Normal:Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;

    const/4 v2, 0x0

    if-eq p3, p2, :cond_0

    .line 6
    invoke-virtual {p3}, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->getIcon()I

    move-result p2

    invoke-virtual {v1, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 8
    :goto_0
    invoke-virtual {p3}, Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;->getTextColor()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x10

    .line 9
    invoke-virtual {p0, p1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0, v2}, Landroid/widget/Toast;->setDuration(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/util/toast/CustomToast;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qennnsad/aknkaksd/util/toast/CustomToast$Type;)V

    return-void
.end method
