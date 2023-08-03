.class public Li1/c$a;
.super Ljava/lang/Object;
.source "ControllerListener2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field public e:Ljava/lang/Object;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field public f:Landroid/net/Uri;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field public g:I

.field public h:I

.field public i:Ljava/lang/Object;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field public j:F

.field public k:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Li1/c$a;->g:I

    .line 3
    iput v0, p0, Li1/c$a;->h:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    iput v0, p0, Li1/c$a;->j:F

    .line 5
    iput v0, p0, Li1/c$a;->k:F

    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Lv1/t;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static c(Ljava/util/Map;)Li1/c$a;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentExtras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Li1/c$a;"
        }
    .end annotation

    .line 1
    new-instance v0, Li1/c$a;

    invoke-direct {v0}, Li1/c$a;-><init>()V

    .line 2
    iput-object p0, v0, Li1/c$a;->a:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public b()Li1/c$a;
    .locals 2

    .line 1
    new-instance v0, Li1/c$a;

    invoke-direct {v0}, Li1/c$a;-><init>()V

    .line 2
    iget-object v1, p0, Li1/c$a;->a:Ljava/util/Map;

    invoke-static {v1}, Li1/c$a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Li1/c$a;->a:Ljava/util/Map;

    .line 3
    iget-object v1, p0, Li1/c$a;->b:Ljava/util/Map;

    invoke-static {v1}, Li1/c$a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Li1/c$a;->b:Ljava/util/Map;

    .line 4
    iget-object v1, p0, Li1/c$a;->c:Ljava/util/Map;

    invoke-static {v1}, Li1/c$a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Li1/c$a;->c:Ljava/util/Map;

    .line 5
    iget-object v1, p0, Li1/c$a;->d:Ljava/util/Map;

    invoke-static {v1}, Li1/c$a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Li1/c$a;->d:Ljava/util/Map;

    .line 6
    iget-object v1, p0, Li1/c$a;->e:Ljava/lang/Object;

    iput-object v1, v0, Li1/c$a;->e:Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Li1/c$a;->f:Landroid/net/Uri;

    iput-object v1, v0, Li1/c$a;->f:Landroid/net/Uri;

    .line 8
    iget v1, p0, Li1/c$a;->g:I

    iput v1, v0, Li1/c$a;->g:I

    .line 9
    iget v1, p0, Li1/c$a;->h:I

    iput v1, v0, Li1/c$a;->h:I

    .line 10
    iget-object v1, p0, Li1/c$a;->i:Ljava/lang/Object;

    iput-object v1, v0, Li1/c$a;->i:Ljava/lang/Object;

    .line 11
    iget v1, p0, Li1/c$a;->j:F

    iput v1, v0, Li1/c$a;->j:F

    .line 12
    iget v1, p0, Li1/c$a;->k:F

    iput v1, v0, Li1/c$a;->k:F

    return-object v0
.end method
