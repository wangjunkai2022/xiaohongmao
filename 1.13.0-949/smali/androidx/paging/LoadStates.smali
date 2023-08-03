.class public final Landroidx/paging/LoadStates;
.super Ljava/lang/Object;
.source "LoadStates.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/LoadStates$Companion;,
        Landroidx/paging/LoadStates$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 !2\u00020\u0001:\u0001!B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J&\u0010\u0012\u001a\u00020\u00132\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00130\u0015H\u0087\u0008\u00f8\u0001\u0000J\u0015\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008\u0019J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\u001d\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0008\u001eJ\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/paging/LoadStates;",
        "",
        "refresh",
        "Landroidx/paging/LoadState;",
        "prepend",
        "append",
        "(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)V",
        "getAppend",
        "()Landroidx/paging/LoadState;",
        "getPrepend",
        "getRefresh",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "forEach",
        "",
        "op",
        "Lkotlin/Function2;",
        "Landroidx/paging/LoadType;",
        "get",
        "loadType",
        "get$paging_common",
        "hashCode",
        "",
        "modifyState",
        "newState",
        "modifyState$paging_common",
        "toString",
        "",
        "Companion",
        "paging-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/paging/LoadStates$Companion;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final IDLE:Landroidx/paging/LoadStates;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final append:Landroidx/paging/LoadState;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final prepend:Landroidx/paging/LoadState;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final refresh:Landroidx/paging/LoadState;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/paging/LoadStates$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/LoadStates$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/paging/LoadStates;->Companion:Landroidx/paging/LoadStates$Companion;

    .line 1
    new-instance v0, Landroidx/paging/LoadStates;

    .line 2
    sget-object v1, Landroidx/paging/LoadState$NotLoading;->Companion:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {v1}, Landroidx/paging/LoadState$NotLoading$Companion;->getIncomplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Landroidx/paging/LoadState$NotLoading$Companion;->getIncomplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object v3

    .line 4
    invoke-virtual {v1}, Landroidx/paging/LoadState$NotLoading$Companion;->getIncomplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object v1

    .line 5
    invoke-direct {v0, v2, v3, v1}, Landroidx/paging/LoadStates;-><init>(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)V

    sput-object v0, Landroidx/paging/LoadStates;->IDLE:Landroidx/paging/LoadStates;

    return-void
.end method

.method public constructor <init>(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)V
    .locals 1
    .param p1    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "refresh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prepend"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "append"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/paging/LoadStates;->refresh:Landroidx/paging/LoadState;

    .line 3
    iput-object p2, p0, Landroidx/paging/LoadStates;->prepend:Landroidx/paging/LoadState;

    .line 4
    iput-object p3, p0, Landroidx/paging/LoadStates;->append:Landroidx/paging/LoadState;

    return-void
.end method

.method public static final synthetic access$getIDLE$cp()Landroidx/paging/LoadStates;
    .locals 1

    sget-object v0, Landroidx/paging/LoadStates;->IDLE:Landroidx/paging/LoadStates;

    return-object v0
.end method

.method public static synthetic copy$default(Landroidx/paging/LoadStates;Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;ILjava/lang/Object;)Landroidx/paging/LoadStates;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Landroidx/paging/LoadStates;->refresh:Landroidx/paging/LoadState;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Landroidx/paging/LoadStates;->prepend:Landroidx/paging/LoadState;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Landroidx/paging/LoadStates;->append:Landroidx/paging/LoadState;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/paging/LoadStates;->copy(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)Landroidx/paging/LoadStates;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/paging/LoadState;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/LoadStates;->refresh:Landroidx/paging/LoadState;

    return-object v0
.end method

.method public final component2()Landroidx/paging/LoadState;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/LoadStates;->prepend:Landroidx/paging/LoadState;

    return-object v0
.end method

.method public final component3()Landroidx/paging/LoadState;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/LoadStates;->append:Landroidx/paging/LoadState;

    return-object v0
.end method

.method public final copy(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)Landroidx/paging/LoadStates;
    .locals 1
    .param p1    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "refresh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prepend"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "append"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/paging/LoadStates;

    invoke-direct {v0, p1, p2, p3}, Landroidx/paging/LoadStates;-><init>(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/paging/LoadStates;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/paging/LoadStates;

    iget-object v1, p0, Landroidx/paging/LoadStates;->refresh:Landroidx/paging/LoadState;

    iget-object v3, p1, Landroidx/paging/LoadStates;->refresh:Landroidx/paging/LoadState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/paging/LoadStates;->prepend:Landroidx/paging/LoadState;

    iget-object v3, p1, Landroidx/paging/LoadStates;->prepend:Landroidx/paging/LoadState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/paging/LoadStates;->append:Landroidx/paging/LoadState;

    iget-object p1, p1, Landroidx/paging/LoadStates;->append:Landroidx/paging/LoadState;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final forEach(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/paging/LoadType;",
            "-",
            "Landroidx/paging/LoadState;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    invoke-virtual {p0}, Landroidx/paging/LoadStates;->getRefresh()Landroidx/paging/LoadState;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    invoke-virtual {p0}, Landroidx/paging/LoadStates;->getPrepend()Landroidx/paging/LoadState;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    invoke-virtual {p0}, Landroidx/paging/LoadStates;->getAppend()Landroidx/paging/LoadState;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final get$paging_common(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;
    .locals 1
    .param p1    # Landroidx/paging/LoadType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "loadType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/paging/LoadStates$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/paging/LoadStates;->refresh:Landroidx/paging/LoadState;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    iget-object p1, p0, Landroidx/paging/LoadStates;->prepend:Landroidx/paging/LoadState;

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Landroidx/paging/LoadStates;->append:Landroidx/paging/LoadState;

    :goto_0
    return-object p1
.end method

.method public final getAppend()Landroidx/paging/LoadState;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/LoadStates;->append:Landroidx/paging/LoadState;

    return-object v0
.end method

.method public final getPrepend()Landroidx/paging/LoadState;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/LoadStates;->prepend:Landroidx/paging/LoadState;

    return-object v0
.end method

.method public final getRefresh()Landroidx/paging/LoadState;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/LoadStates;->refresh:Landroidx/paging/LoadState;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/paging/LoadStates;->refresh:Landroidx/paging/LoadState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/paging/LoadStates;->prepend:Landroidx/paging/LoadState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/paging/LoadStates;->append:Landroidx/paging/LoadState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final modifyState$paging_common(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)Landroidx/paging/LoadStates;
    .locals 7
    .param p1    # Landroidx/paging/LoadType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "loadType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/paging/LoadStates$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    .line 2
    invoke-static/range {v1 .. v6}, Landroidx/paging/LoadStates;->copy$default(Landroidx/paging/LoadStates;Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;ILjava/lang/Object;)Landroidx/paging/LoadStates;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    .line 3
    invoke-static/range {v0 .. v5}, Landroidx/paging/LoadStates;->copy$default(Landroidx/paging/LoadStates;Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;ILjava/lang/Object;)Landroidx/paging/LoadStates;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    .line 4
    invoke-static/range {v0 .. v5}, Landroidx/paging/LoadStates;->copy$default(Landroidx/paging/LoadStates;Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;ILjava/lang/Object;)Landroidx/paging/LoadStates;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadStates(refresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/paging/LoadStates;->refresh:Landroidx/paging/LoadState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prepend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/paging/LoadStates;->prepend:Landroidx/paging/LoadState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", append="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/paging/LoadStates;->append:Landroidx/paging/LoadState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
