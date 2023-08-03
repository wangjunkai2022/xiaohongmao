.class final Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$d;
.super Lkotlin/jvm/internal/Lambda;
.source "MessageGalleryActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "",
        "a",
        "(I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$d;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$d;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->h0(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;I)V

    .line 2
    iget-object v0, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$d;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    invoke-static {v0}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->b0(Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;)Lf4/d;

    move-result-object v0

    iget-object v0, v0, Lf4/d;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$d;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    sget v2, Lb4/b$s;->T4:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    add-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v3, v5

    iget-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$d;->a:Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity;->k0()Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryViewModel;->k()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/message_gallery/MessageGalleryActivity$d;->a(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
