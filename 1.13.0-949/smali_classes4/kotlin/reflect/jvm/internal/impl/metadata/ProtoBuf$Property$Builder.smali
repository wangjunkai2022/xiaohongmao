.class public final Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "ProtoBuf.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PropertyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;",
        "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PropertyOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contextReceiverTypeId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private contextReceiverType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;",
            ">;"
        }
    .end annotation
.end field

.field private flags_:I

.field private getterFlags_:I

.field private name_:I

.field private oldFlags_:I

.field private receiverTypeId_:I

.field private receiverType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

.field private returnTypeId_:I

.field private returnType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

.field private setterFlags_:I

.field private setterValueParameter_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

.field private typeParameter_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;",
            ">;"
        }
    .end annotation
.end field

.field private versionRequirement_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    const/16 v0, 0x206

    .line 2
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->flags_:I

    const/16 v0, 0x806

    .line 3
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->oldFlags_:I

    .line 4
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->returnType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->typeParameter_:Ljava/util/List;

    .line 6
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->receiverType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverType_:Ljava/util/List;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverTypeId_:Ljava/util/List;

    .line 9
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->setterValueParameter_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->versionRequirement_:Ljava/util/List;

    .line 11
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$16000()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;
    .locals 1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->create()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;-><init>()V

    return-object v0
.end method

.method private ensureContextReceiverTypeIdIsMutable()V
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverTypeId_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverTypeId_:Ljava/util/List;

    .line 3
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureContextReceiverTypeIsMutable()V
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverType_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverType_:Ljava/util/List;

    .line 3
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTypeParameterIsMutable()V
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->typeParameter_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->typeParameter_:Ljava/util/List;

    .line 3
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureVersionRequirementIsMutable()V
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->versionRequirement_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->versionRequirement_:Ljava/util/List;

    .line 3
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public build()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;->newUninitializedMessageException(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->build()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;
    .locals 5

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$1;)V

    .line 2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->flags_:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$16202(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 4
    :cond_1
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->oldFlags_:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$16302(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 5
    :cond_2
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->name_:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$16402(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 6
    :cond_3
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->returnType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$16502(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 7
    :cond_4
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->returnTypeId_:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$16602(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;I)I

    .line 8
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    .line 9
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->typeParameter_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->typeParameter_:Ljava/util/List;

    .line 10
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    .line 11
    :cond_5
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->typeParameter_:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$16702(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 12
    :cond_6
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->receiverType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$16802(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    .line 13
    :cond_7
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->receiverTypeId_:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$16902(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;I)I

    .line 14
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    .line 15
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverType_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverType_:Ljava/util/List;

    .line 16
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    .line 17
    :cond_8
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverType_:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17002(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Ljava/util/List;)Ljava/util/List;

    .line 18
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    const/16 v4, 0x200

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    .line 19
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverTypeId_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverTypeId_:Ljava/util/List;

    .line 20
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    .line 21
    :cond_9
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverTypeId_:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17102(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Ljava/util/List;)Ljava/util/List;

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x80

    .line 22
    :cond_a
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->setterValueParameter_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17202(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x100

    .line 23
    :cond_b
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->getterFlags_:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17302(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;I)I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    or-int/lit16 v3, v3, 0x200

    .line 24
    :cond_c
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->setterFlags_:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17402(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;I)I

    .line 25
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    .line 26
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->versionRequirement_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->versionRequirement_:Ljava/util/List;

    .line 27
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    .line 28
    :cond_d
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->versionRequirement_:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17502(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Ljava/util/List;)Ljava/util/List;

    .line 29
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17602(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;I)I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->clone()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;
    .locals 2

    .line 5
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->create()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->clone()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->clone()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->clone()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContextReceiverType(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    return-object p1
.end method

.method public getContextReceiverTypeCount()I
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;
    .locals 1

    .line 3
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->receiverType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    return-object v0
.end method

.method public getReturnType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->returnType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    return-object v0
.end method

.method public getSetterValueParameter()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->setterValueParameter_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    return-object v0
.end method

.method public getTypeParameter(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->typeParameter_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    return-object p1
.end method

.method public getTypeParameterCount()I
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->typeParameter_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReceiverType()Z
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReturnType()Z
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSetterValueParameter()Z
    .locals 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->hasName()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->hasReturnType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->getReturnType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->getTypeParameterCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 5
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->getTypeParameter(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->hasReceiverType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->getReceiverType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    .line 8
    :goto_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->getContextReceiverTypeCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 9
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->getContextReceiverType(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->hasSetterValueParameter()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->getSetterValueParameter()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 12
    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;
    .locals 2

    .line 4
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->hasFlags()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->setFlags(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    .line 7
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->hasOldFlags()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getOldFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->setOldFlags(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    .line 9
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->hasName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getName()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->setName(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    .line 11
    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->hasReturnType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getReturnType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->mergeReturnType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    .line 13
    :cond_4
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->hasReturnTypeId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getReturnTypeId()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->setReturnTypeId(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    .line 15
    :cond_5
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$16700(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 16
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->typeParameter_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$16700(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->typeParameter_:Ljava/util/List;

    .line 18
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    goto :goto_0

    .line 19
    :cond_6
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->ensureTypeParameterIsMutable()V

    .line 20
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->typeParameter_:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$16700(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->hasReceiverType()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getReceiverType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->mergeReceiverType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    .line 23
    :cond_8
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->hasReceiverTypeId()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getReceiverTypeId()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->setReceiverTypeId(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    .line 25
    :cond_9
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17000(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 26
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 27
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17000(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverType_:Ljava/util/List;

    .line 28
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    goto :goto_1

    .line 29
    :cond_a
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->ensureContextReceiverTypeIsMutable()V

    .line 30
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverType_:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17000(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    :cond_b
    :goto_1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17100(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 32
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverTypeId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 33
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17100(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverTypeId_:Ljava/util/List;

    .line 34
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    goto :goto_2

    .line 35
    :cond_c
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->ensureContextReceiverTypeIdIsMutable()V

    .line 36
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->contextReceiverTypeId_:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17100(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    :cond_d
    :goto_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->hasSetterValueParameter()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getSetterValueParameter()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->mergeSetterValueParameter(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    .line 39
    :cond_e
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->hasGetterFlags()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 40
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getGetterFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->setGetterFlags(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    .line 41
    :cond_f
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->hasSetterFlags()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 42
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getSetterFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->setSetterFlags(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    .line 43
    :cond_10
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17500(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 44
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->versionRequirement_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 45
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17500(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->versionRequirement_:Ljava/util/List;

    .line 46
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    goto :goto_3

    .line 47
    :cond_11
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->ensureVersionRequirementIsMutable()V

    .line 48
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->versionRequirement_:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17500(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    :cond_12
    :goto_3
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;->mergeExtensionFields(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    .line 50
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->access$17700(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->concat(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;->setUnknownFields(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;

    return-object p0
.end method

.method public mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;->parsePartialFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    :try_start_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    :cond_1
    throw p1
.end method

.method public bridge synthetic mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    .line 2
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeReceiverType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->receiverType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->receiverType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->receiverType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->receiverType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 4
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeReturnType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->returnType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->returnType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->returnType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->returnType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 4
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeSetterValueParameter(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->setterValueParameter_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->setterValueParameter_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->setterValueParameter_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->setterValueParameter_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    .line 4
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    return-object p0
.end method

.method public setFlags(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->flags_:I

    return-object p0
.end method

.method public setGetterFlags(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->getterFlags_:I

    return-object p0
.end method

.method public setName(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->name_:I

    return-object p0
.end method

.method public setOldFlags(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->oldFlags_:I

    return-object p0
.end method

.method public setReceiverTypeId(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->receiverTypeId_:I

    return-object p0
.end method

.method public setReturnTypeId(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->returnTypeId_:I

    return-object p0
.end method

.method public setSetterFlags(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property$Builder;->setterFlags_:I

    return-object p0
.end method
