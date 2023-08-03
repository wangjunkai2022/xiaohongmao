.class public final Lcom/qennnsad/aknkaksd/f$f;
.super Ljava/lang/Object;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field private a:Lf5/a;

.field private b:Ldagger/hilt/android/internal/modules/c;

.field private c:Lf5/g;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/f$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf5/a;)Lcom/qennnsad/aknkaksd/f$f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appUpdateModule"
        }
    .end annotation

    invoke-static {p1}, Ldagger/internal/p;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf5/a;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$f;->a:Lf5/a;

    return-object p0
.end method

.method public b(Ldagger/hilt/android/internal/modules/c;)Lcom/qennnsad/aknkaksd/f$f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applicationContextModule"
        }
    .end annotation

    invoke-static {p1}, Ldagger/internal/p;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldagger/hilt/android/internal/modules/c;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$f;->b:Ldagger/hilt/android/internal/modules/c;

    return-object p0
.end method

.method public c()Lcom/qennnsad/aknkaksd/d$i;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$f;->a:Lf5/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lf5/a;

    invoke-direct {v0}, Lf5/a;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/f$f;->a:Lf5/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$f;->b:Ldagger/hilt/android/internal/modules/c;

    const-class v1, Ldagger/hilt/android/internal/modules/c;

    invoke-static {v0, v1}, Ldagger/internal/p;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$f;->c:Lf5/g;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lf5/g;

    invoke-direct {v0}, Lf5/g;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/f$f;->c:Lf5/g;

    .line 6
    :cond_1
    new-instance v0, Lcom/qennnsad/aknkaksd/f$k;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$f;->a:Lf5/a;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$f;->b:Ldagger/hilt/android/internal/modules/c;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/f$f;->c:Lf5/g;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/f$k;-><init>(Lf5/a;Ldagger/hilt/android/internal/modules/c;Lf5/g;Lcom/qennnsad/aknkaksd/f$a;)V

    return-object v0
.end method

.method public d(Ldagger/hilt/android/flags/b;)Lcom/qennnsad/aknkaksd/f$f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ldagger/internal/p;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public e(Lf5/g;)Lcom/qennnsad/aknkaksd/f$f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkModule"
        }
    .end annotation

    invoke-static {p1}, Ldagger/internal/p;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf5/g;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$f;->c:Lf5/g;

    return-object p0
.end method
