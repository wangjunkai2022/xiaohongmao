.class final Lcom/im/freechat/ui/contacts/c$b;
.super Lkotlin/jvm/internal/Lambda;
.source "ContactListAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/contacts/c;->i(Lcom/im/freechat/ui/contacts/c$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "it",
        "",
        "a",
        "(Lcom/im/freechat/shared/entities/contact/UserModel;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/contacts/c;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/contacts/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/contacts/c$b;->a:Lcom/im/freechat/ui/contacts/c;

    iput p2, p0, Lcom/im/freechat/ui/contacts/c$b;->b:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/im/freechat/shared/entities/contact/UserModel;)V
    .locals 2
    .param p1    # Lcom/im/freechat/shared/entities/contact/UserModel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/im/freechat/ui/contacts/c$b;->a:Lcom/im/freechat/ui/contacts/c;

    invoke-virtual {p1}, Lcom/im/freechat/ui/contacts/c;->g()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/c$b;->a:Lcom/im/freechat/ui/contacts/c;

    iget v1, p0, Lcom/im/freechat/ui/contacts/c$b;->b:I

    invoke-static {v0, v1}, Lcom/im/freechat/ui/contacts/c;->e(Lcom/im/freechat/ui/contacts/c;I)Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v0

    const-string v1, "getItem(position)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/im/freechat/shared/entities/contact/UserModel;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/contacts/c$b;->a(Lcom/im/freechat/shared/entities/contact/UserModel;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
