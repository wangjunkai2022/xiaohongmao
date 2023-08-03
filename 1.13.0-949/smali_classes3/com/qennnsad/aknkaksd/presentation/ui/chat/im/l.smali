.class public final Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;
.super Ljava/lang/Object;
.source "Navigator.kt"

# interfaces
.implements Lcom/im/freechat/sdk/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u001a\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J.\u0010\u000c\u001a\u00020\u00042\u000e\u0010\t\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J$\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000fJ\u0018\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;",
        "Lcom/im/freechat/sdk/d$a;",
        "Landroid/os/Bundle;",
        "extras",
        "",
        "e",
        "d",
        "Ljava/lang/Class;",
        "Landroidx/fragment/app/Fragment;",
        "fragmentClass",
        "",
        "backStack",
        "h",
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;",
        "event",
        "",
        "g",
        "Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;",
        "f",
        "keepBackStack",
        "addToBackStack",
        "b",
        "",
        "a",
        "Landroidx/fragment/app/FragmentActivity;",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "<init>",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation build Ln6/b;
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/FragmentActivity;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;->a:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;Landroid/os/Bundle;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;->b(Landroid/os/Bundle;ZZ)V

    return-void
.end method

.method private final d(Landroid/os/Bundle;)V
    .locals 2

    const-class v0, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorFragment;

    const-string v1, "chat_selector"

    invoke-direct {p0, v0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;->h(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private final e(Landroid/os/Bundle;)V
    .locals 2

    const-class v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    const-string v1, "group_manager"

    invoke-direct {p0, v0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;->h(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private final f(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l$a;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p2, v1, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;->b(Landroid/os/Bundle;ZZ)V

    return v0

    :cond_0
    return v1
.end method

.method private final g(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;Landroid/os/Bundle;)Z
    .locals 10

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    return v2

    .line 2
    :cond_0
    sget-object v3, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;->a:Landroidx/fragment/app/FragmentActivity;

    const-string p1, "url"

    .line 3
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    return v2

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    .line 4
    invoke-static/range {v3 .. v9}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;Landroid/content/Context;Ljava/lang/String;ZZILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;->d(Landroid/os/Bundle;)V

    goto :goto_0

    .line 6
    :cond_3
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity$a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;->a:Landroidx/fragment/app/FragmentActivity;

    const-string v2, "contactId"

    .line 7
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {p1, v1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_4
    invoke-direct {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;->e(Landroid/os/Bundle;)V

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return v0
.end method

.method private final h(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/im/freechat/sdk/SDKManager;->a:Lcom/im/freechat/sdk/SDKManager;

    invoke-virtual {v1}, Lcom/im/freechat/sdk/SDKManager;->p()Lcom/im/freechat/sdk/d;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p0}, Lcom/im/freechat/sdk/d;->d(Ljava/lang/Class;Landroid/os/Bundle;Lcom/im/freechat/sdk/d$a;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const p2, 0x7f0a02d7

    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method static synthetic i(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;->h(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/os/Bundle;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;->g(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsViewModel$Directions;Landroid/os/Bundle;)Z

    move-result p1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;->f(Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;Landroid/os/Bundle;)Z

    move-result p1

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Landroid/os/Bundle;ZZ)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "activity.supportFragmentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    const-class p2, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    if-eqz p3, :cond_1

    const-string p3, "chat_details"

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    invoke-direct {p0, p2, p1, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;->h(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
