.class final Lcom/qennnsad/aknkaksd/f$e$a;
.super Ljava/lang/Object;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lu7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f$e;
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

.field private final c:I


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "id"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$e$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/f$e$a;->b:Lcom/qennnsad/aknkaksd/f$e;

    .line 4
    iput p3, p0, Lcom/qennnsad/aknkaksd/f$e$a;->c:I

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
    iget v0, p0, Lcom/qennnsad/aknkaksd/f$e$a;->c:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ldagger/hilt/android/internal/managers/c;->c()Ldagger/hilt/android/internal/managers/b$e;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/qennnsad/aknkaksd/f$e$a;->c:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0
.end method
