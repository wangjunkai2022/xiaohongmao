.class public final Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$d;
.super Ljava/lang/Object;
.source "GroupManagerFragment.kt"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->S0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGroupManagerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupManagerFragment.kt\ncom/im/freechat/ui/chat/group_manager/GroupManagerFragment$initViews$12\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,421:1\n254#2,2:422\n*S KotlinDebug\n*F\n+ 1 GroupManagerFragment.kt\ncom/im/freechat/ui/chat/group_manager/GroupManagerFragment$initViews$12\n*L\n171#1:422,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/im/freechat/ui/chat/group_manager/GroupManagerFragment$d",
        "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
        "tab",
        "",
        "onTabSelected",
        "onTabUnselected",
        "onTabReselected",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;


# direct methods
.method constructor <init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$d;->a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$d;->a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    invoke-static {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->A0(Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;)Lf4/s;

    move-result-object v0

    iget-object v0, v0, Lf4/s;->l:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.memberList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    sget-object v2, Lcom/im/freechat/ui/chat/history/HistoryTab;->Members:Lcom/im/freechat/ui/chat/history/HistoryTab;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 2
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method
