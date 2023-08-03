.class final Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$b;
.super Lkotlin/jvm/internal/Lambda;
.source "ModifyPasswordFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;->z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Le5/m1;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;


# direct methods
.method constructor <init>(Le5/m1;Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$b;->a:Le5/m1;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$b;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$b;->a:Le5/m1;

    iget-object v0, v0, Le5/m1;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$b;->a:Le5/m1;

    iget-object v2, v2, Le5/m1;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 4
    :goto_1
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$b;->a:Le5/m1;

    iget-object v3, v3, Le5/m1;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v6, 0x1

    :goto_4
    const/4 v7, 0x2

    if-nez v6, :cond_b

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v6, 0x1

    :goto_6
    if-nez v6, :cond_b

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_7

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    :cond_8
    :goto_7
    if-eqz v4, :cond_9

    goto :goto_8

    .line 6
    :cond_9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v0, "\u5bc6\u7801\u4e0d\u5339\u914d \u8bf7\u91cd\u65b0\u8f93\u5165"

    .line 7
    invoke-static {v0, v5, v7, v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->n(Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    .line 8
    :cond_a
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;->y0()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    :goto_8
    const-string v0, "\u8f93\u5165\u4e0d\u80fd\u4e3a\u7a7a"

    .line 9
    invoke-static {v0, v5, v7, v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->n(Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
