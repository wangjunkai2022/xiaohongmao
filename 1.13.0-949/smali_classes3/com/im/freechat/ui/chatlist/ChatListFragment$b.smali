.class public final Lcom/im/freechat/ui/chatlist/ChatListFragment$b;
.super Ljava/lang/Object;
.source "ChatListFragment.kt"

# interfaces
.implements Lcom/bigkoo/convenientbanner/holder/CBViewHolderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chatlist/ChatListFragment;->u0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/im/freechat/ui/chatlist/ChatListFragment$b",
        "Lcom/bigkoo/convenientbanner/holder/CBViewHolderCreator;",
        "Landroid/view/View;",
        "itemView",
        "Lcom/bigkoo/convenientbanner/holder/Holder;",
        "Lcom/im/freechat/shared/entities/banner/Banner;",
        "a",
        "",
        "b",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lcom/bigkoo/convenientbanner/holder/Holder;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/bigkoo/convenientbanner/holder/Holder<",
            "Lcom/im/freechat/shared/entities/banner/Banner;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/main/a;

    invoke-direct {v0, p1}, Lcom/im/freechat/ui/main/a;-><init>(Landroid/view/View;)V

    check-cast v0, Lcom/bigkoo/convenientbanner/holder/Holder;

    return-object v0
.end method

.method public b()I
    .locals 1

    sget v0, Lb4/b$m;->x1:I

    return v0
.end method
