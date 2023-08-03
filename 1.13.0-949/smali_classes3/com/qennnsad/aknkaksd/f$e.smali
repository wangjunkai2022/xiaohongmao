.class final Lcom/qennnsad/aknkaksd/f$e;
.super Lcom/qennnsad/aknkaksd/d$c;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/f$e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/f$k;

.field private final b:Lcom/qennnsad/aknkaksd/f$e;

.field private c:Lu7/c;


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/f$k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singletonCImpl"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/d$c;-><init>()V

    .line 3
    iput-object p0, p0, Lcom/qennnsad/aknkaksd/f$e;->b:Lcom/qennnsad/aknkaksd/f$e;

    .line 4
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$e;->a:Lcom/qennnsad/aknkaksd/f$k;

    .line 5
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/f$e;->c()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$e;-><init>(Lcom/qennnsad/aknkaksd/f$k;)V

    return-void
.end method

.method private c()V
    .locals 4

    new-instance v0, Lcom/qennnsad/aknkaksd/f$e$a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$e;->a:Lcom/qennnsad/aknkaksd/f$k;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$e;->b:Lcom/qennnsad/aknkaksd/f$e;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/f$e$a;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;I)V

    invoke-static {v0}, Ldagger/internal/g;->b(Lu7/c;)Lu7/c;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/f$e;->c:Lu7/c;

    return-void
.end method


# virtual methods
.method public a()Lh6/a;
    .locals 4

    new-instance v0, Lcom/qennnsad/aknkaksd/f$b;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$e;->a:Lcom/qennnsad/aknkaksd/f$k;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$e;->b:Lcom/qennnsad/aknkaksd/f$e;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/f$b;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$a;)V

    return-object v0
.end method

.method public b()Ldagger/hilt/android/a;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$e;->c:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/hilt/android/a;

    return-object v0
.end method
