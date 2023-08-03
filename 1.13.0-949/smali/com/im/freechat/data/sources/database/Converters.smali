.class public final Lcom/im/freechat/data/sources/database/Converters;
.super Ljava/lang/Object;
.source "Converters.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConverters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Converters.kt\ncom/im/freechat/data/sources/database/Converters\n+ 2 Koin.kt\norg/koin/core/Koin\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n+ 4 -MoshiKotlinExtensions.kt\ncom/squareup/moshi/_MoshiKotlinExtensionsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,91:1\n100#2,4:92\n100#2,4:98\n131#3:96\n131#3:102\n29#4:97\n29#4:103\n1549#5:104\n1620#5,3:105\n1179#5,2:108\n1253#5,4:110\n*S KotlinDebug\n*F\n+ 1 Converters.kt\ncom/im/freechat/data/sources/database/Converters\n*L\n67#1:92,4\n74#1:98,4\n67#1:96\n74#1:102\n67#1:97\n74#1:103\n87#1:104\n87#1:105,3\n88#1:108,2\n88#1:110,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0008H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\nH\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0019\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0002\u0010\u000fJ\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u000eH\u0007\u00a2\u0006\u0002\u0010\u0011J\u001a\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00132\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0015H\u0007J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013H\u0007J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\"\u0010\u0019\u001a\u0004\u0018\u00010\u00152\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u001aH\u0007J\"\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u001a2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0015H\u0007J\u0010\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/Converters;",
        "",
        "()V",
        "fromRole",
        "",
        "value",
        "Lcom/im/freechat/shared/entities/chat/ChatMember$Role;",
        "fromStatus",
        "Lcom/im/freechat/shared/entities/chat/ChatMember$Status;",
        "fromType",
        "Lcom/im/freechat/shared/entities/chat/Chat$Type;",
        "Lcom/im/freechat/shared/entities/message/Message$MediaType;",
        "mediaTypeFromInt",
        "messageStatusFromInt",
        "Lcom/im/freechat/shared/entities/message/Message$MessageStatus;",
        "(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/message/Message$MessageStatus;",
        "messageStatusToInt",
        "(Lcom/im/freechat/shared/entities/message/Message$MessageStatus;)Ljava/lang/Integer;",
        "messageStylesFromString",
        "",
        "Lcom/im/freechat/shared/entities/message/MessageStyle;",
        "",
        "messageStylesToString",
        "roleFromInt",
        "statusFromInt",
        "stringMapToString",
        "",
        "stringToStringMap",
        "typeFromInt",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromRole(Lcom/im/freechat/shared/entities/chat/ChatMember$Role;)I
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/chat/ChatMember$Role;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->getValue()I

    move-result p1

    return p1
.end method

.method public final fromStatus(Lcom/im/freechat/shared/entities/chat/ChatMember$Status;)I
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/chat/ChatMember$Status;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->getValue()I

    move-result p1

    return p1
.end method

.method public final fromType(Lcom/im/freechat/shared/entities/chat/Chat$Type;)I
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/chat/Chat$Type;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat$Type;->getValue()I

    move-result p1

    return p1
.end method

.method public final fromType(Lcom/im/freechat/shared/entities/message/Message$MediaType;)I
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/message/Message$MediaType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message$MediaType;->getType()I

    move-result p1

    return p1
.end method

.method public final mediaTypeFromInt(I)Lcom/im/freechat/shared/entities/message/Message$MediaType;
    .locals 1
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$MediaType;->Companion:Lcom/im/freechat/shared/entities/message/Message$MediaType$Companion;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/im/freechat/shared/entities/message/Message$MediaType$Companion;->typeByValue(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/message/Message$MediaType;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final messageStatusFromInt(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/message/Message$MessageStatus;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->Companion:Lcom/im/freechat/shared/entities/message/Message$MessageStatus$Companion;

    invoke-virtual {v0, p1}, Lcom/im/freechat/shared/entities/message/Message$MessageStatus$Companion;->fromInt(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object p1

    return-object p1
.end method

.method public final messageStatusToInt(Lcom/im/freechat/shared/entities/message/Message$MessageStatus;)Ljava/lang/Integer;
    .locals 0
    .param p1    # Lcom/im/freechat/shared/entities/message/Message$MessageStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final messageStylesFromString(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/MessageStyle;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {}, Lorg/koin/java/a;->e()Lorg/koin/core/Koin;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object v1

    .line 3
    const-class v2, Lcom/squareup/moshi/u;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/squareup/moshi/u;

    .line 5
    const-class v1, Ljava/util/List;

    sget-object v2, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v3, Lcom/im/freechat/shared/entities/message/MessageStyle;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/moshi/a0;->b(Lcom/squareup/moshi/u;Lkotlin/reflect/KType;)Lcom/squareup/moshi/h;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/squareup/moshi/h;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final messageStylesToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/MessageStyle;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {}, Lorg/koin/java/a;->e()Lorg/koin/core/Koin;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object v1

    .line 3
    const-class v2, Lcom/squareup/moshi/u;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/squareup/moshi/u;

    .line 5
    const-class v1, Ljava/util/List;

    sget-object v2, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v3, Lcom/im/freechat/shared/entities/message/MessageStyle;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/moshi/a0;->b(Lcom/squareup/moshi/u;Lkotlin/reflect/KType;)Lcom/squareup/moshi/h;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/squareup/moshi/h;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final roleFromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Role;
    .locals 1
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->Companion:Lcom/im/freechat/shared/entities/chat/ChatMember$Role$Companion;

    invoke-virtual {v0, p1}, Lcom/im/freechat/shared/entities/chat/ChatMember$Role$Companion;->fromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object p1

    return-object p1
.end method

.method public final statusFromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Status;
    .locals 1
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->Companion:Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;

    invoke-virtual {v0, p1}, Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;->fromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    move-result-object p1

    return-object p1
.end method

.method public final stringMapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final stringToStringMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const-string v0, ", "

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v2, "="

    .line 6
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7
    :cond_3
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 8
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/List;

    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    return-object v1
.end method

.method public final typeFromInt(I)Lcom/im/freechat/shared/entities/chat/Chat$Type;
    .locals 1
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->Companion:Lcom/im/freechat/shared/entities/chat/Chat$Type$Companion;

    invoke-virtual {v0, p1}, Lcom/im/freechat/shared/entities/chat/Chat$Type$Companion;->fromInt(I)Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object p1

    return-object p1
.end method
