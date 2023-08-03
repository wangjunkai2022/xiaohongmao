.class final Lcom/qennnsad/aknkaksd/f$c$a;
.super Ljava/lang/Object;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lu7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lu7/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/f$k;

.field private final b:Lcom/qennnsad/aknkaksd/f$e;

.field private final c:Lcom/qennnsad/aknkaksd/f$c;

.field private final d:I


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "id"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$c$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/f$c$a;->b:Lcom/qennnsad/aknkaksd/f$e;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/f$c$a;->c:Lcom/qennnsad/aknkaksd/f$c;

    .line 5
    iput p4, p0, Lcom/qennnsad/aknkaksd/f$c$a;->d:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/f$c$a;->d:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c$a;->c:Lcom/qennnsad/aknkaksd/f$c;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$c;->s(Lcom/qennnsad/aknkaksd/f$c;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/b;->c(Landroid/app/Activity;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/qennnsad/aknkaksd/f$c$a;->d:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$c$a;->c:Lcom/qennnsad/aknkaksd/f$c;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$c;->r(Lcom/qennnsad/aknkaksd/f$c;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-object v0
.end method
