.class public Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;
.super Ljava/lang/Object;
.source "MysterableBean.kt"

# interfaces
.implements Lcom/qennnsad/aknkaksd/data/bean/Mysterable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J#\u0010\t\u001a\u0004\u0018\u00010\u00082\u0012\u0010\n\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004H\u0002\u00a2\u0006\u0002\u0010\u000cJ\u0006\u0010\r\u001a\u00020\u0006J\n\u0010\u000e\u001a\u0004\u0018\u00010\u0008H\u0016J\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u00068\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;",
        "Lcom/qennnsad/aknkaksd/data/bean/Mysterable;",
        "()V",
        "TAG",
        "",
        "mystery",
        "",
        "mysteryUid",
        "",
        "findField",
        "names",
        "",
        "([Ljava/lang/String;)Ljava/lang/Object;",
        "getIsMystery",
        "getMysteryUid",
        "isMystery",
        "",
        "setIsMystery",
        "",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final transient TAG:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private mystery:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_mystery"
    .end annotation
.end field

.field private transient mysteryUid:Ljava/lang/Object;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysterableBean->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final varargs findField([Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Find mystery user id among "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    :try_start_0
    aget-object v0, p1, v1

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0}, Ljava/lang/NoSuchFieldException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    array-length v0, p1

    invoke-static {p1, v2, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 11
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->findField([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 12
    :catch_1
    array-length v0, p1

    invoke-static {p1, v2, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 13
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->findField([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    return-object v1
.end method


# virtual methods
.method public final getIsMystery()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->mystery:I

    return v0
.end method

.method public getMysteryUid()Ljava/lang/Object;
    .locals 4
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->mysteryUid:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "id"

    const-string v1, "userid"

    const-string v2, "userId"

    const-string v3, "user_id"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->findField([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->mysteryUid:Ljava/lang/Object;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->mysteryUid:Ljava/lang/Object;

    return-object v0
.end method

.method public final isMystery()Z
    .locals 2

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->mystery:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final setIsMystery(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/MysterableBean;->mystery:I

    return-void
.end method
