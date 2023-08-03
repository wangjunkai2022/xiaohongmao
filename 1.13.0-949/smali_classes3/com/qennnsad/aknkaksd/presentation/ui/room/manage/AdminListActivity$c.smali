.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c;
.super Lkotlin/jvm/internal/Lambda;
.source "AdminListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;",
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
        "Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;",
        "it",
        "",
        "a",
        "(Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;)V
    .locals 10
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;

    const v0, 0x7f13035e

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c$a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;

    invoke-direct {v6, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x2d

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/qennnsad/aknkaksd/util/l;->P(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$c;->a(Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
