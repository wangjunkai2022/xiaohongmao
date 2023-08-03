.class public final Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/m;
.super Ljava/lang/Object;
.source "Navigator_Factory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation build Ldagger/internal/s;
    value = "dagger.hilt.android.scopes.ActivityScoped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/m;->a:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/m;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/m;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/m;-><init>(Lu7/c;)V

    return-object v0
.end method

.method public static c(Landroidx/fragment/app/FragmentActivity;)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/m;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/m;->c(Landroidx/fragment/app/FragmentActivity;)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/m;->b()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;

    move-result-object v0

    return-object v0
.end method
