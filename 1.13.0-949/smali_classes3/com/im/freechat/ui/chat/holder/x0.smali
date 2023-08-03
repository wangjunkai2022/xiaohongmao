.class public final Lcom/im/freechat/ui/chat/holder/x0;
.super Ljava/lang/Object;
.source "VideoMessageHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0010\t\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "",
        "",
        "a",
        "app_prodRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public static final a(J)Ljava/lang/String;
    .locals 9
    .annotation build Lm8/g;
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x400

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    new-instance v2, Ljava/text/StringCharacterIterator;

    const-string v3, "KMGTPE"

    invoke-direct {v2, v3}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x28

    move-wide v4, v0

    :goto_1
    if-ltz v3, :cond_2

    const-wide v6, 0xfffccccccccccccL

    shr-long/2addr v6, v3

    cmp-long v8, v0, v6

    if-lez v8, :cond_2

    const/16 v6, 0xa

    shr-long/2addr v4, v6

    .line 4
    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    add-int/lit8 v3, v3, -0xa

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Long;->signum(J)I

    move-result p0

    int-to-long p0, p0

    mul-long v4, v4, p0

    .line 6
    sget-object p0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 p0, 0x2

    new-array p1, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    long-to-double v3, v4

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    invoke-interface {v2}, Ljava/text/CharacterIterator;->current()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f %ciB"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(format, *args)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
