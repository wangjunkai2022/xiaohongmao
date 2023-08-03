package com.im.freechat.data;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.google.mlkit.common.MlKitException;
import com.im.freechat.data.openapigen.api.ChatApi;
import com.im.freechat.data.openapigen.api.FileApi;
import com.im.freechat.data.openapigen.api.FriendApi;
import com.im.freechat.data.openapigen.api.MessageApi;
import com.im.freechat.data.openapigen.api.UserApi;
import com.im.freechat.data.openapigen.models.AcceptFriendRequestRequest;
import com.im.freechat.data.openapigen.models.Animation;
import com.im.freechat.data.openapigen.models.CancelFriendRequestRequest;
import com.im.freechat.data.openapigen.models.DeleteChatsRequest;
import com.im.freechat.data.openapigen.models.DeleteMessagesRequest;
import com.im.freechat.data.openapigen.models.EditMessageMediaGroupRequest;
import com.im.freechat.data.openapigen.models.EditMessageText200Response;
import com.im.freechat.data.openapigen.models.EditMessageTextRequest;
import com.im.freechat.data.openapigen.models.ForwardMessage200Response;
import com.im.freechat.data.openapigen.models.ForwardMessageRequest;
import com.im.freechat.data.openapigen.models.GetChat200Response;
import com.im.freechat.data.openapigen.models.GetChats200Response;
import com.im.freechat.data.openapigen.models.GetFriends200Response;
import com.im.freechat.data.openapigen.models.GetMessageUpdates200Response;
import com.im.freechat.data.openapigen.models.GetSentFriendRequests200Response;
import com.im.freechat.data.openapigen.models.GetUser200Response;
import com.im.freechat.data.openapigen.models.Photo;
import com.im.freechat.data.openapigen.models.PinMessageRequest;
import com.im.freechat.data.openapigen.models.PreSignedUrl200Response;
import com.im.freechat.data.openapigen.models.SendAnimationRequest;
import com.im.freechat.data.openapigen.models.SendFriendRequestRequest;
import com.im.freechat.data.openapigen.models.SendMediaGroupRequest;
import com.im.freechat.data.openapigen.models.SendPhotoRequest;
import com.im.freechat.data.openapigen.models.SendText200Response;
import com.im.freechat.data.openapigen.models.SendTextRequest;
import com.im.freechat.data.openapigen.models.SendVideoRequest;
import com.im.freechat.data.openapigen.models.UnpinMessageRequest;
import com.im.freechat.data.openapigen.models.Video;
import com.im.freechat.data.sources.api.RemoteApi;
import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapperKt;
import com.im.freechat.data.sources.database.MainDatabase;
import com.im.freechat.data.sources.database.entities.attachment.AttachmentDao;
import com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity;
import com.im.freechat.data.sources.database.entities.chat.ChatDao;
import com.im.freechat.data.sources.database.entities.chat.ChatMapper;
import com.im.freechat.data.sources.database.entities.contact.UserDao;
import com.im.freechat.data.sources.database.entities.contact.UserEntityMapper;
import com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao;
import com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusMapper;
import com.im.freechat.data.sources.database.entities.member.MemberDao;
import com.im.freechat.data.sources.database.entities.message.FullMessageEntity;
import com.im.freechat.data.sources.database.entities.message.MessageDao;
import com.im.freechat.data.sources.database.entities.message.MessageEntity;
import com.im.freechat.data.sources.database.entities.message.MessageMapper;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.Message;
import com.ksyun.media.player.IMediaPlayer;
import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import io.sentry.clientreport.e;
import io.sentry.protocol.y;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import okhttp3.RequestBody;
import org.bouncycastle.i18n.MessageBundle;
import retrofit2.Response;
import timber.log.Timber;

/* compiled from: SyncRepositoryImpl.kt */
@Metadata(bv = {}, d1 = {"\u0000\u009a\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b/\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bw\u0012\b\u0010Ï\u0001\u001a\u00030Î\u0001\u0012\b\u0010\u0094\u0001\u001a\u00030\u0092\u0001\u0012\b\u0010\u0097\u0001\u001a\u00030\u0095\u0001\u0012\b\u0010\u009a\u0001\u001a\u00030\u0098\u0001\u0012\b\u0010\u009d\u0001\u001a\u00030\u009b\u0001\u0012\b\u0010 \u0001\u001a\u00030\u009e\u0001\u0012\b\u0010£\u0001\u001a\u00030¡\u0001\u0012\b\u0010¦\u0001\u001a\u00030¤\u0001\u0012\b\u0010©\u0001\u001a\u00030§\u0001\u0012\b\u0010¬\u0001\u001a\u00030ª\u0001\u0012\b\u0010¯\u0001\u001a\u00030\u00ad\u0001¢\u0006\u0006\bÐ\u0001\u0010Ñ\u0001J#\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ)\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ'\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J#\u0010\u0015\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\fH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J#\u0010\u0017\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\fH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0016J#\u0010\u0018\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\fH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0016J)\u0010\u0019\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u000fJ+\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u001cH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\u001b\u0010!\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u001fH\u0082@ø\u0001\u0000¢\u0006\u0004\b!\u0010\"J7\u0010%\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00140$0#2\u0006\u0010\u0005\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\b%\u0010&J#\u0010'\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\b'\u0010(J#\u0010)\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\b)\u0010(J)\u0010,\u001a\u00020\u00142\u0006\u0010*\u001a\u00020\u00142\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00040\u000bH\u0096@ø\u0001\u0000¢\u0006\u0004\b,\u0010-J#\u0010.\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\b.\u0010(J;\u00100\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0016\u0010/\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00140$H\u0096@ø\u0001\u0000¢\u0006\u0004\b0\u00101J\u000e\u00103\u001a\b\u0012\u0004\u0012\u00020\u001f02H\u0016J\u0010\u00105\u001a\u00020\u00062\u0006\u00104\u001a\u00020\u001fH\u0016J\b\u00106\u001a\u00020\u001fH\u0016Ji\u0010>\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\b\u00108\u001a\u0004\u0018\u0001072\f\u00109\u001a\b\u0012\u0004\u0012\u0002070\u000b2\b\u0010:\u001a\u0004\u0018\u00010\u00142\u0006\u0010;\u001a\u00020\u001f2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002070#2\u0006\u0010=\u001a\u00020\u001fH\u0096@ø\u0001\u0000¢\u0006\u0004\b>\u0010?Je\u0010A\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\f\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00140\u000b2\b\u00108\u001a\u0004\u0018\u0001072\f\u00109\u001a\b\u0012\u0004\u0012\u0002070\u000b2\u0006\u0010;\u001a\u00020\u001f2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002070#H\u0096@ø\u0001\u0000¢\u0006\u0004\bA\u0010BJ1\u0010D\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00042\f\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00140\u000b2\u0006\u0010\u001b\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\bD\u0010EJ+\u0010H\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010F\u001a\u00020\u00142\u0006\u0010G\u001a\u000207H\u0096@ø\u0001\u0000¢\u0006\u0004\bH\u0010IJ+\u0010J\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010F\u001a\u00020\u00142\u0006\u0010G\u001a\u000207H\u0096@ø\u0001\u0000¢\u0006\u0004\bJ\u0010IJ+\u0010K\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010F\u001a\u00020\u00142\u0006\u0010G\u001a\u000207H\u0096@ø\u0001\u0000¢\u0006\u0004\bK\u0010IJ#\u0010M\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010L\u001a\u00020\u001fH\u0096@ø\u0001\u0000¢\u0006\u0004\bM\u0010NJ#\u0010O\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u001cH\u0096@ø\u0001\u0000¢\u0006\u0004\bO\u0010PJ\u001b\u0010Q\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u001cH\u0096@ø\u0001\u0000¢\u0006\u0004\bQ\u0010RJ\u001b\u0010S\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\bS\u0010&JE\u0010W\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010T\u001a\u0002072\u0006\u0010U\u001a\u00020\u00042\u0006\u0010V\u001a\u00020\u00042\b\u0010:\u001a\u0004\u0018\u00010\u0014H\u0096@ø\u0001\u0000¢\u0006\u0004\bW\u0010XJ#\u0010Z\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020\u0014H\u0096@ø\u0001\u0000¢\u0006\u0004\bZ\u0010[J\u0013\u0010\\\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0004\b\\\u0010]J%\u0010`\u001a\u00020\u00062\u0006\u0010^\u001a\u00020\u00042\b\u0010_\u001a\u0004\u0018\u000107H\u0096@ø\u0001\u0000¢\u0006\u0004\b`\u0010aJ\u0013\u0010b\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0004\bb\u0010]J#\u0010d\u001a\u00020\u00062\u0006\u0010^\u001a\u00020\u00042\u0006\u0010c\u001a\u00020\u001fH\u0096@ø\u0001\u0000¢\u0006\u0004\bd\u0010NJ\u001b\u0010e\u001a\u00020\u00062\u0006\u0010^\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\be\u0010&J\u001b\u0010f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0086@ø\u0001\u0000¢\u0006\u0004\bf\u0010&J\u001b\u0010h\u001a\u00020g2\u0006\u0010\u0005\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\bh\u0010&J\u0013\u0010i\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0004\bi\u0010]J\u0013\u0010j\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0004\bj\u0010]J\u001b\u0010k\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\bk\u0010&J\u0013\u0010l\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0004\bl\u0010]J1\u0010o\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010m\u001a\u0002072\f\u0010n\u001a\b\u0012\u0004\u0012\u00020\u00040\u000bH\u0096@ø\u0001\u0000¢\u0006\u0004\bo\u0010pJ#\u0010r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010q\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\br\u0010(J+\u0010t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010s\u001a\u00020\u001fH\u0096@ø\u0001\u0000¢\u0006\u0004\bt\u0010uJ+\u0010x\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010w\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\bx\u0010yJ+\u0010z\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010w\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\bz\u0010yJ+\u0010{\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010w\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\b{\u0010yJ+\u0010|\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010w\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\b|\u0010yJ+\u0010}\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010w\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\b}\u0010yJ#\u0010~\u001a\u00020\u00042\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\b~\u0010(J-\u0010\u0080\u0001\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u007f\u001a\u00020\u001fH\u0096@ø\u0001\u0000¢\u0006\u0005\b\u0080\u0001\u0010uJ.\u0010\u0082\u0001\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0007\u0010\u0081\u0001\u001a\u00020\u001fH\u0096@ø\u0001\u0000¢\u0006\u0005\b\u0082\u0001\u0010uJ/\u0010\u0084\u0001\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0007\u0010\u0083\u0001\u001a\u000207H\u0096@ø\u0001\u0000¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J0\u0010\u0088\u0001\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\b\u0010\u0087\u0001\u001a\u00030\u0086\u0001H\u0096@ø\u0001\u0000¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J.\u0010\u008b\u0001\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0007\u0010\u008a\u0001\u001a\u00020\u001fH\u0096@ø\u0001\u0000¢\u0006\u0005\b\u008b\u0001\u0010uJ&\u0010\u008d\u0001\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0007\u0010\u008c\u0001\u001a\u000207H\u0096@ø\u0001\u0000¢\u0006\u0005\b\u008d\u0001\u0010aJ&\u0010\u008f\u0001\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0007\u0010\u008e\u0001\u001a\u000207H\u0096@ø\u0001\u0000¢\u0006\u0005\b\u008f\u0001\u0010aJ&\u0010\u0091\u0001\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0007\u0010\u0090\u0001\u001a\u000207H\u0096@ø\u0001\u0000¢\u0006\u0005\b\u0091\u0001\u0010aR\u0017\u0010\u0094\u0001\u001a\u00030\u0092\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bb\u0010\u0093\u0001R\u0017\u0010\u0097\u0001\u001a\u00030\u0095\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bi\u0010\u0096\u0001R\u0018\u0010\u009a\u0001\u001a\u00030\u0098\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0099\u0001R\u0017\u0010\u009d\u0001\u001a\u00030\u009b\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b~\u0010\u009c\u0001R\u0018\u0010 \u0001\u001a\u00030\u009e\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u009f\u0001R\u0017\u0010£\u0001\u001a\u00030¡\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bx\u0010¢\u0001R\u0017\u0010¦\u0001\u001a\u00030¤\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b'\u0010¥\u0001R\u0017\u0010©\u0001\u001a\u00030§\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b3\u0010¨\u0001R\u0017\u0010¬\u0001\u001a\u00030ª\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bQ\u0010«\u0001R\u0017\u0010¯\u0001\u001a\u00030\u00ad\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bW\u0010®\u0001R\u0017\u0010²\u0001\u001a\u00030°\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bK\u0010±\u0001R\u0017\u0010µ\u0001\u001a\u00030³\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bO\u0010´\u0001R\u0017\u0010¸\u0001\u001a\u00030¶\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bz\u0010·\u0001R\u0017\u0010»\u0001\u001a\u00030¹\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b0\u0010º\u0001R\u0017\u0010¾\u0001\u001a\u00030¼\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bZ\u0010½\u0001R\u0017\u0010Á\u0001\u001a\u00030¿\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bM\u0010À\u0001R\u0017\u0010Ä\u0001\u001a\u00030Â\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b|\u0010Ã\u0001R\u0018\u0010Ç\u0001\u001a\u00030Å\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0091\u0001\u0010Æ\u0001R\u0017\u0010Ê\u0001\u001a\u00030È\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bk\u0010É\u0001R\u001d\u0010Í\u0001\u001a\t\u0012\u0004\u0012\u00020\u001f0Ë\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\be\u0010Ì\u0001\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006Ò\u0001"}, d2 = {"Lcom/im/freechat/data/l;", "Lcom/im/freechat/domain/t;", "Lcom/im/freechat/data/openapigen/models/Chat;", "it", "", "userId", "", "m0", "(Lcom/im/freechat/data/openapigen/models/Chat;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;", "message", "", "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;", "attachments", "s0", "(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "rawAttachments", "v0", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "attachment", "", "q0", "(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "t0", "p0", "r0", "currentUserId", k4.b.f84734a, "Lcom/im/freechat/shared/entities/message/Message;", "o0", "(IILcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "isAttachment", "n0", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "Lkotlin/Pair;", "F", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "g", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "K", "lastUpdateTime", "presentChatIds", "C", "(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "M", "lastReadMessageIds", "n", "(IILkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/i;", "h", "synchronizing", "u", "w", "", "content", "attachmentUris", "replyToMessageId", "mentionAll", "mentions", "removeOnFail", "Q", "(IILjava/lang/String;Ljava/util/List;Ljava/lang/Long;ZLjava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "forwardMessageIds", ExifInterface.LONGITUDE_EAST, "(IILjava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "messageIds", "O", "(ILjava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "messageId", "newContent", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(IJLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ExifInterface.GPS_DIRECTION_TRUE, "k", "forEveryone", "p", "(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "l", "(ILcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ContextChain.TAG_INFRA, "(Lcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "B", "mediaId", "width", "height", "j", "(IILjava/lang/String;IILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "messagedId", "o", "(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "R", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "targetUserId", e.b.f83079a, "J", "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "a", "accepted", "G", "t", "u0", "Lcom/im/freechat/shared/entities/contact/UserModel;", "getUser", "b", "H", "s", "D", "name", "targetIds", y.b.f83920h, "(ILjava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "targetId", "v", "skipIfNotEmpty", "L", "(IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "selfUserId", "memberId", "f", "(IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "m", "P", "q", y.b.f83919g, "d", "isPublic", "z", "show", "e", MessageBundle.TITLE_ENTRY, "c", "(IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Ljava/io/File;", "file", "U", "(IILjava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "pinState", "I", ContactResponseMapperKt.BIO, ExifInterface.LATITUDE_SOUTH, "nickname", "N", "avatarUrl", "r", "Lcom/im/freechat/data/openapigen/api/ChatApi;", "Lcom/im/freechat/data/openapigen/api/ChatApi;", "chatApi", "Lcom/im/freechat/data/openapigen/api/FriendApi;", "Lcom/im/freechat/data/openapigen/api/FriendApi;", "friendApi", "Lcom/im/freechat/data/openapigen/api/UserApi;", "Lcom/im/freechat/data/openapigen/api/UserApi;", "userApi", "Lcom/im/freechat/data/openapigen/api/MessageApi;", "Lcom/im/freechat/data/openapigen/api/MessageApi;", "messageApi", "Lcom/im/freechat/data/openapigen/api/FileApi;", "Lcom/im/freechat/data/openapigen/api/FileApi;", "fileApi", "Lcom/im/freechat/data/sources/api/RemoteApi;", "Lcom/im/freechat/data/sources/api/RemoteApi;", "remoteApi", "Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;", "Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;", "chatMapper", "Lcom/im/freechat/domain/h;", "Lcom/im/freechat/domain/h;", "fileUtil", "Lcom/im/freechat/domain/q;", "Lcom/im/freechat/domain/q;", "serverDateRepository", "Lcom/im/freechat/domain/n;", "Lcom/im/freechat/domain/n;", "notificationManager", "Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;", "Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;", "chatDao", "Lcom/im/freechat/data/sources/database/entities/contact/UserDao;", "Lcom/im/freechat/data/sources/database/entities/contact/UserDao;", "userDao", "Lcom/im/freechat/data/sources/database/entities/member/MemberDao;", "Lcom/im/freechat/data/sources/database/entities/member/MemberDao;", "memberDao", "Lcom/im/freechat/data/sources/database/entities/message/MessageDao;", "Lcom/im/freechat/data/sources/database/entities/message/MessageDao;", "messageDao", "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;", "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;", "attachmentDao", "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;", "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;", "friendStatusDao", "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;", "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;", "messageMapper", "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;", "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;", "chatRequestMapper", "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;", "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;", "contactEntityMapper", "Lkotlinx/coroutines/flow/t;", "Lkotlinx/coroutines/flow/t;", "chatsSyncState", "Lcom/im/freechat/data/sources/database/MainDatabase;", "database", "<init>", "(Lcom/im/freechat/data/sources/database/MainDatabase;Lcom/im/freechat/data/openapigen/api/ChatApi;Lcom/im/freechat/data/openapigen/api/FriendApi;Lcom/im/freechat/data/openapigen/api/UserApi;Lcom/im/freechat/data/openapigen/api/MessageApi;Lcom/im/freechat/data/openapigen/api/FileApi;Lcom/im/freechat/data/sources/api/RemoteApi;Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;Lcom/im/freechat/domain/h;Lcom/im/freechat/domain/q;Lcom/im/freechat/domain/n;)V", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class l implements com.im.freechat.domain.t {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final ChatApi f40771a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final FriendApi f40772b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final UserApi f40773c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final MessageApi f40774d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final FileApi f40775e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final RemoteApi f40776f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final ChatMapper f40777g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final com.im.freechat.domain.h f40778h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final com.im.freechat.domain.q f40779i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final com.im.freechat.domain.n f40780j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final ChatDao f40781k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final UserDao f40782l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final MemberDao f40783m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final MessageDao f40784n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final AttachmentDao f40785o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private final FriendStatusDao f40786p;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private final MessageMapper f40787q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private final FriendStatusMapper f40788r;
    @m8.g

    /* renamed from: s  reason: collision with root package name */
    private final UserEntityMapper f40789s;
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    private final kotlinx.coroutines.flow.t<Boolean> f40790t;

    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Message.MediaType.values().length];
            iArr[Message.MediaType.IMAGE.ordinal()] = 1;
            iArr[Message.MediaType.VIDEO.ordinal()] = 2;
            iArr[Message.MediaType.FILE.ordinal()] = 3;
            iArr[Message.MediaType.GIF.ordinal()] = 4;
            iArr[Message.MediaType.AUDIO.ordinal()] = 5;
            iArr[Message.MediaType.LOCATION.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 0, 1, 1, 1, 2, 2}, l = {683, 684, 688, 689}, m = "readMessage", n = {"this", "message", "currentUserId", "this", "message", "currentUserId", "this", "message"}, s = {"L$0", "L$1", "I$0", "L$0", "L$1", "I$0", "L$0", "L$1"})
    /* loaded from: classes2.dex */
    public static final class a0 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40791a;

        /* renamed from: b  reason: collision with root package name */
        Object f40792b;

        /* renamed from: c  reason: collision with root package name */
        int f40793c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f40794d;

        /* renamed from: f  reason: collision with root package name */
        int f40796f;

        a0(Continuation<? super a0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40794d = obj;
            this.f40796f |= Integer.MIN_VALUE;
            return l.this.l(0, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/FriendApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/GetSentFriendRequests200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$syncFriendRequests$2", f = "SyncRepositoryImpl.kt", i = {}, l = {817}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class a1 extends SuspendLambda implements Function2<FriendApi, Continuation<? super Response<GetSentFriendRequests200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40797a;

        a1(Continuation<? super a1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g FriendApi friendApi, @m8.h Continuation<? super Response<GetSentFriendRequests200Response>> continuation) {
            return ((a1) create(friendApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40797a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                FriendApi friendApi = l.this.f40772b;
                this.f40797a = 1;
                obj = friendApi.getFriendRequests(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 5}, l = {133, 137, com.google.android.exoplayer2.extractor.ts.h0.H, 141, 142, 144}, m = "chatReceived", n = {"this", "it", "userId", "this", "it", com.im.freechat.ui.create.choosemember.h.f43540d, "userId", "this", "it", "userId", "this", "it", "it", "userId", "this", "it", "userId", "this"}, s = {"L$0", "L$1", "I$0", "L$0", "L$1", "L$2", "I$0", "L$0", "L$1", "I$0", "L$0", "L$1", "L$2", "I$0", "L$0", "L$1", "I$0", "L$0"})
    /* loaded from: classes2.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40799a;

        /* renamed from: b  reason: collision with root package name */
        Object f40800b;

        /* renamed from: c  reason: collision with root package name */
        Object f40801c;

        /* renamed from: d  reason: collision with root package name */
        int f40802d;

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ Object f40803e;

        /* renamed from: g  reason: collision with root package name */
        int f40805g;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40803e = obj;
            this.f40805g |= Integer.MIN_VALUE;
            return l.this.m0(null, 0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/MessageApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$readMessage$2", f = "SyncRepositoryImpl.kt", i = {}, l = {683}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class b0 extends SuspendLambda implements Function2<MessageApi, Continuation<? super Response<EditMessageText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40806a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40807b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Message f40808c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b0(Message message, Continuation<? super b0> continuation) {
            super(2, continuation);
            this.f40808c = message;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            b0 b0Var = new b0(this.f40808c, continuation);
            b0Var.f40807b = obj;
            return b0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g MessageApi messageApi, @m8.h Continuation<? super Response<EditMessageText200Response>> continuation) {
            return ((b0) create(messageApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40806a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                PinMessageRequest pinMessageRequest = new PinMessageRequest(this.f40808c.getChatId(), this.f40808c.getMessageId());
                this.f40806a = 1;
                obj = ((MessageApi) this.f40807b).readMessage(pinMessageRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 1, 1}, l = {782, 784, 785}, m = "syncFriends", n = {"this", "this", "contacts"}, s = {"L$0", "L$0", "L$1"})
    /* loaded from: classes2.dex */
    public static final class b1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40809a;

        /* renamed from: b  reason: collision with root package name */
        Object f40810b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f40811c;

        /* renamed from: e  reason: collision with root package name */
        int f40813e;

        b1(Continuation<? super b1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40811c = obj;
            this.f40813e |= Integer.MIN_VALUE;
            return l.this.R(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0}, l = {677, 678}, m = "clearHistory", n = {"this", k4.b.f84734a}, s = {"L$0", "I$0"})
    /* loaded from: classes2.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40814a;

        /* renamed from: b  reason: collision with root package name */
        int f40815b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f40816c;

        /* renamed from: e  reason: collision with root package name */
        int f40818e;

        c(Continuation<? super c> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40816c = obj;
            this.f40818e |= Integer.MIN_VALUE;
            return l.this.p(0, false, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 0, 1, 1, 1}, l = {831, 833}, m = "replyFriendRequest", n = {"this", "targetUserId", "accepted", "this", "targetUserId", "accepted"}, s = {"L$0", "I$0", "Z$0", "L$0", "I$0", "Z$0"})
    /* loaded from: classes2.dex */
    public static final class c0 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40819a;

        /* renamed from: b  reason: collision with root package name */
        int f40820b;

        /* renamed from: c  reason: collision with root package name */
        boolean f40821c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f40822d;

        /* renamed from: f  reason: collision with root package name */
        int f40824f;

        c0(Continuation<? super c0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40822d = obj;
            this.f40824f |= Integer.MIN_VALUE;
            return l.this.G(0, false, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/FriendApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/GetFriends200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$syncFriends$2", f = "SyncRepositoryImpl.kt", i = {}, l = {782}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class c1 extends SuspendLambda implements Function2<FriendApi, Continuation<? super Response<GetFriends200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40825a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40826b;

        c1(Continuation<? super c1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            c1 c1Var = new c1(continuation);
            c1Var.f40826b = obj;
            return c1Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g FriendApi friendApi, @m8.h Continuation<? super Response<GetFriends200Response>> continuation) {
            return ((c1) create(friendApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40825a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                this.f40825a = 1;
                obj = ((FriendApi) this.f40826b).getFriends(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/ChatApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$clearHistory$2", f = "SyncRepositoryImpl.kt", i = {}, l = {677}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class d extends SuspendLambda implements Function2<ChatApi, Continuation<? super Response<EditMessageText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40827a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40828b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f40829c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(int i4, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f40829c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            d dVar = new d(this.f40829c, continuation);
            dVar.f40828b = obj;
            return dVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g ChatApi chatApi, @m8.h Continuation<? super Response<EditMessageText200Response>> continuation) {
            return ((d) create(chatApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            List listOf;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40827a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                listOf = CollectionsKt__CollectionsJVMKt.listOf(Boxing.boxInt(this.f40829c));
                DeleteChatsRequest deleteChatsRequest = new DeleteChatsRequest(listOf);
                this.f40827a = 1;
                obj = ((ChatApi) this.f40828b).clearChatsHistory(deleteChatsRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/FriendApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$replyFriendRequest$2$1", f = "SyncRepositoryImpl.kt", i = {}, l = {831}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class d0 extends SuspendLambda implements Function2<FriendApi, Continuation<? super Response<EditMessageText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40830a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40831b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f40832c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d0(int i4, Continuation<? super d0> continuation) {
            super(2, continuation);
            this.f40832c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            d0 d0Var = new d0(this.f40832c, continuation);
            d0Var.f40831b = obj;
            return d0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g FriendApi friendApi, @m8.h Continuation<? super Response<EditMessageText200Response>> continuation) {
            return ((d0) create(friendApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40830a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                AcceptFriendRequestRequest acceptFriendRequestRequest = new AcceptFriendRequestRequest(this.f40832c);
                this.f40830a = 1;
                obj = ((FriendApi) this.f40831b).acceptFriendRequest(acceptFriendRequestRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 1, 1, 1, 2, 2}, l = {MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR, MlKitException.CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD, 213, 214}, m = "syncLastMessage", n = {"this", "userId", "this", "it", "userId", "this", "messageAndAttachment"}, s = {"L$0", "I$0", "L$0", "L$1", "I$0", "L$0", "L$1"})
    /* loaded from: classes2.dex */
    public static final class d1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40833a;

        /* renamed from: b  reason: collision with root package name */
        Object f40834b;

        /* renamed from: c  reason: collision with root package name */
        int f40835c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f40836d;

        /* renamed from: f  reason: collision with root package name */
        int f40838f;

        d1(Continuation<? super d1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40836d = obj;
            this.f40838f |= Integer.MIN_VALUE;
            return l.this.M(0, 0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 1, 1, 2, 2}, l = {922, 923, 927, 945}, m = "createFavoritesChat", n = {"this", "this", "currentUserId", "this", "currentUserId"}, s = {"L$0", "L$0", "I$0", "L$0", "I$0"})
    /* loaded from: classes2.dex */
    public static final class e extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40839a;

        /* renamed from: b  reason: collision with root package name */
        int f40840b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f40841c;

        /* renamed from: e  reason: collision with root package name */
        int f40843e;

        e(Continuation<? super e> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40841c = obj;
            this.f40843e |= Integer.MIN_VALUE;
            return l.this.D(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/FriendApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$replyFriendRequest$2$2", f = "SyncRepositoryImpl.kt", i = {}, l = {833}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class e0 extends SuspendLambda implements Function2<FriendApi, Continuation<? super Response<EditMessageText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40844a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40845b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f40846c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e0(int i4, Continuation<? super e0> continuation) {
            super(2, continuation);
            this.f40846c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            e0 e0Var = new e0(this.f40846c, continuation);
            e0Var.f40845b = obj;
            return e0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g FriendApi friendApi, @m8.h Continuation<? super Response<EditMessageText200Response>> continuation) {
            return ((e0) create(friendApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40844a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                AcceptFriendRequestRequest acceptFriendRequestRequest = new AcceptFriendRequestRequest(this.f40846c);
                this.f40844a = 1;
                obj = ((FriendApi) this.f40845b).rejectFriendRequest(acceptFriendRequestRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/ChatApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/GetChat200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$syncLastMessage$2", f = "SyncRepositoryImpl.kt", i = {}, l = {MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class e1 extends SuspendLambda implements Function2<ChatApi, Continuation<? super Response<GetChat200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40847a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40848b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f40849c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e1(int i4, Continuation<? super e1> continuation) {
            super(2, continuation);
            this.f40849c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            e1 e1Var = new e1(this.f40849c, continuation);
            e1Var.f40848b = obj;
            return e1Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g ChatApi chatApi, @m8.h Continuation<? super Response<GetChat200Response>> continuation) {
            return ((e1) create(chatApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40847a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                int i10 = this.f40849c;
                this.f40847a = 1;
                obj = ((ChatApi) this.f40848b).getChat(i10, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {}, l = {852}, m = "createTempId", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class f extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f40850a;

        /* renamed from: c  reason: collision with root package name */
        int f40852c;

        f(Continuation<? super f> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40850a = obj;
            this.f40852c |= Integer.MIN_VALUE;
            return l.this.n0(false, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 1, 1, 1, 2, 2, 3}, l = {768, 769, 771, 776}, m = "resendMessage", n = {"this", "messagedId", "this", "fullMessage", "messagedId", "this", "messagedId", "e"}, s = {"L$0", "J$0", "L$0", "L$1", "J$0", "L$0", "J$0", "L$0"})
    /* loaded from: classes2.dex */
    public static final class f0 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40853a;

        /* renamed from: b  reason: collision with root package name */
        Object f40854b;

        /* renamed from: c  reason: collision with root package name */
        long f40855c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f40856d;

        /* renamed from: f  reason: collision with root package name */
        int f40858f;

        f0(Continuation<? super f0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40856d = obj;
            this.f40858f |= Integer.MIN_VALUE;
            return l.this.o(0, 0L, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6}, l = {159, 164, 168, 178, 186, 193, 194}, m = "syncMessageUpdates", n = {"this", "presentChatIds", "curPage", "lastUpdateTime", "this", "presentChatIds", "curPage", "deletedMessages", "editedMessages", "lastUpdateTime", "lastMessageId", "this", "presentChatIds", "curPage", "deletedMessages", "editedMessages", "result", "messagesToDelete", "list", "lastUpdateTime", "lastMessageId", "this", "presentChatIds", "curPage", "deletedMessages", "editedMessages", "result", "it", "lastUpdateTime", "lastMessageId", "this", "presentChatIds", "curPage", "deletedMessages", "editedMessages", "result", "it", "originalMessage", "messageAndAttachment", "lastUpdateTime", "lastMessageId", "this", "presentChatIds", "curPage", "deletedMessages", "editedMessages", "result", "it", "messageAndAttachment", "lastUpdateTime", "lastMessageId", "this", "presentChatIds", "curPage", "deletedMessages", "editedMessages", "result", "it", "lastUpdateTime", "lastMessageId"}, s = {"L$0", "L$1", "L$2", "J$0", "L$0", "L$1", "L$2", "L$3", "L$4", "J$0", "J$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "J$0", "J$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$7", "J$0", "J$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$7", "L$8", "L$9", "J$0", "J$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$7", "L$8", "J$0", "J$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$7", "J$0", "J$1"})
    /* loaded from: classes2.dex */
    public static final class f1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40859a;

        /* renamed from: b  reason: collision with root package name */
        Object f40860b;

        /* renamed from: c  reason: collision with root package name */
        Object f40861c;

        /* renamed from: d  reason: collision with root package name */
        Object f40862d;

        /* renamed from: e  reason: collision with root package name */
        Object f40863e;

        /* renamed from: f  reason: collision with root package name */
        Object f40864f;

        /* renamed from: g  reason: collision with root package name */
        Object f40865g;

        /* renamed from: h  reason: collision with root package name */
        Object f40866h;

        /* renamed from: i  reason: collision with root package name */
        Object f40867i;

        /* renamed from: j  reason: collision with root package name */
        Object f40868j;

        /* renamed from: k  reason: collision with root package name */
        long f40869k;

        /* renamed from: l  reason: collision with root package name */
        long f40870l;

        /* renamed from: m  reason: collision with root package name */
        /* synthetic */ Object f40871m;

        /* renamed from: o  reason: collision with root package name */
        int f40873o;

        f1(Continuation<? super f1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40871m = obj;
            this.f40873o |= Integer.MIN_VALUE;
            return l.this.C(0L, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0}, l = {845, 846}, m = "deleteFriendRequest", n = {"this", "targetUserId"}, s = {"L$0", "I$0"})
    /* loaded from: classes2.dex */
    public static final class g extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40874a;

        /* renamed from: b  reason: collision with root package name */
        int f40875b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f40876c;

        /* renamed from: e  reason: collision with root package name */
        int f40878e;

        g(Continuation<? super g> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40876c = obj;
            this.f40878e |= Integer.MIN_VALUE;
            return l.this.t(0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {}, l = {481}, m = "sendFileMessage", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class g0 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f40879a;

        /* renamed from: c  reason: collision with root package name */
        int f40881c;

        g0(Continuation<? super g0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40879a = obj;
            this.f40881c |= Integer.MIN_VALUE;
            return l.this.p0(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/MessageApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$syncMessageUpdates$2", f = "SyncRepositoryImpl.kt", i = {}, l = {164}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class g1 extends SuspendLambda implements Function2<MessageApi, Continuation<? super Response<GetMessageUpdates200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40882a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40883b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ long f40884c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ long f40885d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f40886e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g1(long j4, long j10, Ref.IntRef intRef, Continuation<? super g1> continuation) {
            super(2, continuation);
            this.f40884c = j4;
            this.f40885d = j10;
            this.f40886e = intRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            g1 g1Var = new g1(this.f40884c, this.f40885d, this.f40886e, continuation);
            g1Var.f40883b = obj;
            return g1Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g MessageApi messageApi, @m8.h Continuation<? super Response<GetMessageUpdates200Response>> continuation) {
            return ((g1) create(messageApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40882a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                MessageApi messageApi = (MessageApi) this.f40883b;
                long j4 = this.f40884c;
                long j10 = this.f40885d;
                int i10 = this.f40886e.element;
                this.f40882a = 1;
                obj = messageApi.getMessageUpdates(j4, j10, i10, 50, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/FriendApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$deleteFriendRequest$2", f = "SyncRepositoryImpl.kt", i = {}, l = {845}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class h extends SuspendLambda implements Function2<FriendApi, Continuation<? super Response<EditMessageText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40887a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40888b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f40889c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(int i4, Continuation<? super h> continuation) {
            super(2, continuation);
            this.f40889c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            h hVar = new h(this.f40889c, continuation);
            hVar.f40888b = obj;
            return hVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g FriendApi friendApi, @m8.h Continuation<? super Response<EditMessageText200Response>> continuation) {
            return ((h) create(friendApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40887a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                CancelFriendRequestRequest cancelFriendRequestRequest = new CancelFriendRequestRequest(this.f40889c);
                this.f40887a = 1;
                obj = ((FriendApi) this.f40888b).cancelFriendRequest(cancelFriendRequestRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 0, 1, 1, 1, 2, 2, 2}, l = {IMediaPlayer.MEDIA_INFO_METADATA_UPDATE, 803, 804, 805}, m = "sendFriendRequest", n = {"this", e.b.f83079a, "targetUserId", "this", e.b.f83079a, "targetUserId", "this", e.b.f83079a, "targetUserId"}, s = {"L$0", "L$1", "I$0", "L$0", "L$1", "I$0", "L$0", "L$1", "I$0"})
    /* loaded from: classes2.dex */
    public static final class h0 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40890a;

        /* renamed from: b  reason: collision with root package name */
        Object f40891b;

        /* renamed from: c  reason: collision with root package name */
        int f40892c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f40893d;

        /* renamed from: f  reason: collision with root package name */
        int f40895f;

        h0(Continuation<? super h0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40893d = obj;
            this.f40895f |= Integer.MIN_VALUE;
            return l.this.J(0, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5}, l = {com.facebook.imageutils.c.f13392g, 229, 244, 245, 258, 260}, m = "syncMessages", n = {"this", "lastReadMessageIds", "curPage", "relevantIds", "userId", k4.b.f84734a, "this", "lastReadMessageIds", "curPage", "relevantIds", "lastLocalMessageId", "newLastLocalMessageId", "users", "userId", k4.b.f84734a, "this", "lastReadMessageIds", "curPage", "relevantIds", "lastLocalMessageId", "newLastLocalMessageId", "users", "result", "messagesAndAttachments", "userId", k4.b.f84734a, "this", "lastReadMessageIds", "curPage", "relevantIds", "lastLocalMessageId", "newLastLocalMessageId", "users", "result", "userId", k4.b.f84734a, "this", "lastReadMessageIds", "curPage", "relevantIds", "lastLocalMessageId", "newLastLocalMessageId", "users", "userId", k4.b.f84734a, "this", "lastReadMessageIds", "curPage", "relevantIds", "lastLocalMessageId", "newLastLocalMessageId", "users", "userId", k4.b.f84734a}, s = {"L$0", "L$1", "L$2", "L$3", "I$0", "I$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "I$0", "I$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0", "I$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "I$0", "I$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "I$0", "I$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "I$0", "I$1"})
    /* loaded from: classes2.dex */
    public static final class h1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40896a;

        /* renamed from: b  reason: collision with root package name */
        Object f40897b;

        /* renamed from: c  reason: collision with root package name */
        Object f40898c;

        /* renamed from: d  reason: collision with root package name */
        Object f40899d;

        /* renamed from: e  reason: collision with root package name */
        Object f40900e;

        /* renamed from: f  reason: collision with root package name */
        Object f40901f;

        /* renamed from: g  reason: collision with root package name */
        Object f40902g;

        /* renamed from: h  reason: collision with root package name */
        Object f40903h;

        /* renamed from: i  reason: collision with root package name */
        Object f40904i;

        /* renamed from: j  reason: collision with root package name */
        int f40905j;

        /* renamed from: k  reason: collision with root package name */
        int f40906k;

        /* renamed from: l  reason: collision with root package name */
        /* synthetic */ Object f40907l;

        /* renamed from: n  reason: collision with root package name */
        int f40909n;

        h1(Continuation<? super h1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40907l = obj;
            this.f40909n |= Integer.MIN_VALUE;
            return l.this.n(0, 0, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7}, l = {TypedValues.Motion.TYPE_ANIMATE_CIRCLEANGLE_TO, TypedValues.Motion.TYPE_QUANTIZE_MOTIONSTEPS, 613, 621, 626, 628, 643, 647, 649}, m = "deleteMessages", n = {"this", "messageIds", "currentUserId", k4.b.f84734a, "this", "messageIds", "messagesToRemoveFromApi", "currentUserId", k4.b.f84734a, "this", "messageIds", "messagesToRemoveFromApi", "currentUserId", k4.b.f84734a, "needChatSync", "this", "messageIds", "messagesToRemoveFromApi", "currentUserId", k4.b.f84734a, "needChatSync", "this", "currentUserId", k4.b.f84734a, "needChatSync", "this", "mediaIds", "currentUserId", k4.b.f84734a, "needChatSync", "this", "mediaIds", "group", "currentUserId", k4.b.f84734a, "needChatSync", "this", "currentUserId", k4.b.f84734a, "needChatSync"}, s = {"L$0", "L$1", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1", "I$2", "L$0", "L$1", "L$2", "I$0", "I$1", "I$2", "L$0", "I$0", "I$1", "I$2", "L$0", "L$1", "I$0", "I$1", "I$2", "L$0", "L$1", "L$3", "I$0", "I$1", "I$2", "L$0", "I$0", "I$1", "I$2"})
    /* loaded from: classes2.dex */
    public static final class i extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40910a;

        /* renamed from: b  reason: collision with root package name */
        Object f40911b;

        /* renamed from: c  reason: collision with root package name */
        Object f40912c;

        /* renamed from: d  reason: collision with root package name */
        Object f40913d;

        /* renamed from: e  reason: collision with root package name */
        int f40914e;

        /* renamed from: f  reason: collision with root package name */
        int f40915f;

        /* renamed from: g  reason: collision with root package name */
        int f40916g;

        /* renamed from: h  reason: collision with root package name */
        /* synthetic */ Object f40917h;

        /* renamed from: j  reason: collision with root package name */
        int f40919j;

        i(Continuation<? super i> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40917h = obj;
            this.f40919j |= Integer.MIN_VALUE;
            return l.this.O(0, null, 0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/FriendApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$sendFriendRequest$2", f = "SyncRepositoryImpl.kt", i = {}, l = {IMediaPlayer.MEDIA_INFO_METADATA_UPDATE}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class i0 extends SuspendLambda implements Function2<FriendApi, Continuation<? super Response<EditMessageText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40920a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40921b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f40922c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f40923d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i0(int i4, String str, Continuation<? super i0> continuation) {
            super(2, continuation);
            this.f40922c = i4;
            this.f40923d = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            i0 i0Var = new i0(this.f40922c, this.f40923d, continuation);
            i0Var.f40921b = obj;
            return i0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g FriendApi friendApi, @m8.h Continuation<? super Response<EditMessageText200Response>> continuation) {
            return ((i0) create(friendApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40920a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                SendFriendRequestRequest sendFriendRequestRequest = new SendFriendRequestRequest(this.f40922c, this.f40923d);
                this.f40920a = 1;
                obj = ((FriendApi) this.f40921b).sendFriendRequest(sendFriendRequestRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/MessageApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$syncMessages$2", f = "SyncRepositoryImpl.kt", i = {}, l = {230}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class i1 extends SuspendLambda implements Function2<MessageApi, Continuation<? super Response<GetMessageUpdates200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40924a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40925b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f40926c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f40927d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i1(Ref.IntRef intRef, int i4, Continuation<? super i1> continuation) {
            super(2, continuation);
            this.f40926c = intRef;
            this.f40927d = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            i1 i1Var = new i1(this.f40926c, this.f40927d, continuation);
            i1Var.f40925b = obj;
            return i1Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g MessageApi messageApi, @m8.h Continuation<? super Response<GetMessageUpdates200Response>> continuation) {
            return ((i1) create(messageApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40924a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                MessageApi messageApi = (MessageApi) this.f40925b;
                int i10 = this.f40926c.element;
                Integer boxInt = Boxing.boxInt(this.f40927d);
                this.f40924a = 1;
                obj = MessageApi.DefaultImpls.getMessages$default(messageApi, i10, 50, null, boxInt, this, 4, null);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/MessageApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$deleteMessages$2", f = "SyncRepositoryImpl.kt", i = {}, l = {614}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class j extends SuspendLambda implements Function2<MessageApi, Continuation<? super Response<EditMessageText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40928a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40929b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f40930c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ List<Long> f40931d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(int i4, List<Long> list, Continuation<? super j> continuation) {
            super(2, continuation);
            this.f40930c = i4;
            this.f40931d = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            j jVar = new j(this.f40930c, this.f40931d, continuation);
            jVar.f40929b = obj;
            return jVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g MessageApi messageApi, @m8.h Continuation<? super Response<EditMessageText200Response>> continuation) {
            return ((j) create(messageApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40928a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                DeleteMessagesRequest deleteMessagesRequest = new DeleteMessagesRequest(this.f40930c, this.f40931d);
                this.f40928a = 1;
                obj = ((MessageApi) this.f40929b).deleteMessages(deleteMessagesRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6}, l = {713, 726, 735, 736, 738, 754, 759, 763}, m = "sendGiphy", n = {"this", "mediaId", "replyToMessageId", "userId", k4.b.f84734a, "width", "height", "this", "mediaId", "replyToMessageId", "msg", k4.b.f84734a, "width", "height", "tempId", "this", "mediaId", "replyToMessageId", "attachment", k4.b.f84734a, "width", "height", "tempId", "this", "mediaId", "replyToMessageId", "attachment", k4.b.f84734a, "width", "height", "tempId", "this", "attachment", k4.b.f84734a, "tempId", "this", "attachment", k4.b.f84734a, "id", "this", k4.b.f84734a, "id"}, s = {"L$0", "L$1", "L$2", "I$0", "I$1", "I$2", "I$3", "L$0", "L$1", "L$2", "L$3", "I$0", "I$1", "I$2", "J$0", "L$0", "L$1", "L$2", "L$3", "I$0", "I$1", "I$2", "J$0", "L$0", "L$1", "L$2", "L$3", "I$0", "I$1", "I$2", "J$0", "L$0", "L$1", "I$0", "J$0", "L$0", "L$1", "I$0", "J$0", "L$0", "I$0", "J$0"})
    /* loaded from: classes2.dex */
    public static final class j0 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40932a;

        /* renamed from: b  reason: collision with root package name */
        Object f40933b;

        /* renamed from: c  reason: collision with root package name */
        Object f40934c;

        /* renamed from: d  reason: collision with root package name */
        Object f40935d;

        /* renamed from: e  reason: collision with root package name */
        int f40936e;

        /* renamed from: f  reason: collision with root package name */
        int f40937f;

        /* renamed from: g  reason: collision with root package name */
        int f40938g;

        /* renamed from: h  reason: collision with root package name */
        int f40939h;

        /* renamed from: i  reason: collision with root package name */
        long f40940i;

        /* renamed from: j  reason: collision with root package name */
        /* synthetic */ Object f40941j;

        /* renamed from: l  reason: collision with root package name */
        int f40943l;

        j0(Continuation<? super j0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40941j = obj;
            this.f40943l |= Integer.MIN_VALUE;
            return l.this.j(0, 0, null, 0, 0, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0}, l = {856, 857}, m = "syncUser", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class j1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40944a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f40945b;

        /* renamed from: d  reason: collision with root package name */
        int f40947d;

        j1(Continuation<? super j1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40945b = obj;
            this.f40947d |= Integer.MIN_VALUE;
            return l.this.u0(0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/MessageApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$deleteMessages$5$1", f = "SyncRepositoryImpl.kt", i = {}, l = {643}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class k extends SuspendLambda implements Function2<MessageApi, Continuation<? super Response<EditMessageText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40948a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40949b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ EditMessageMediaGroupRequest f40950c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(EditMessageMediaGroupRequest editMessageMediaGroupRequest, Continuation<? super k> continuation) {
            super(2, continuation);
            this.f40950c = editMessageMediaGroupRequest;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            k kVar = new k(this.f40950c, continuation);
            kVar.f40949b = obj;
            return kVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g MessageApi messageApi, @m8.h Continuation<? super Response<EditMessageText200Response>> continuation) {
            return ((k) create(messageApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40948a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                EditMessageMediaGroupRequest editMessageMediaGroupRequest = this.f40950c;
                this.f40948a = 1;
                obj = ((MessageApi) this.f40949b).editMessageMediaGroup(editMessageMediaGroupRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/MessageApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/SendText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$sendGiphy$id$1", f = "SyncRepositoryImpl.kt", i = {}, l = {739}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class k0 extends SuspendLambda implements Function2<MessageApi, Continuation<? super Response<SendText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40951a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40952b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f40953c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ AttachmentEntity f40954d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f40955e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f40956f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ String f40957g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ Long f40958h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k0(int i4, AttachmentEntity attachmentEntity, int i10, int i11, String str, Long l10, Continuation<? super k0> continuation) {
            super(2, continuation);
            this.f40953c = i4;
            this.f40954d = attachmentEntity;
            this.f40955e = i10;
            this.f40956f = i11;
            this.f40957g = str;
            this.f40958h = l10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            k0 k0Var = new k0(this.f40953c, this.f40954d, this.f40955e, this.f40956f, this.f40957g, this.f40958h, continuation);
            k0Var.f40952b = obj;
            return k0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g MessageApi messageApi, @m8.h Continuation<? super Response<SendText200Response>> continuation) {
            return ((k0) create(messageApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40951a;
            if (i4 != 0) {
                if (i4 == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            int i10 = this.f40953c;
            String remoteUrl = this.f40954d.getRemoteUrl();
            Intrinsics.checkNotNull(remoteUrl);
            SendAnimationRequest sendAnimationRequest = new SendAnimationRequest(i10, new Animation(remoteUrl, this.f40955e, this.f40956f, this.f40957g, this.f40954d.getFileName(), null, 32, null), null, this.f40958h, 4, null);
            this.f40951a = 1;
            Object sendAnimation = ((MessageApi) this.f40952b).sendAnimation(sendAnimationRequest, this);
            return sendAnimation == coroutine_suspended ? coroutine_suspended : sendAnimation;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/UserApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/GetUser200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$syncUser$2", f = "SyncRepositoryImpl.kt", i = {}, l = {856}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class k1 extends SuspendLambda implements Function2<UserApi, Continuation<? super Response<GetUser200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40959a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40960b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f40961c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k1(int i4, Continuation<? super k1> continuation) {
            super(2, continuation);
            this.f40961c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            k1 k1Var = new k1(this.f40961c, continuation);
            k1Var.f40960b = obj;
            return k1Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g UserApi userApi, @m8.h Continuation<? super Response<GetUser200Response>> continuation) {
            return ((k1) create(userApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40959a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                int i10 = this.f40961c;
                this.f40959a = 1;
                obj = ((UserApi) this.f40960b).getUser(i10, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8}, l = {551, 562, 564, 566, 570, 573, 583, 589, 594, 597}, m = "forwardMessage", n = {"this", "message", "currentUserId", k4.b.f84734a, "this", "message", "entity", k4.b.f84734a, "tempMsgId", "this", "message", "entity", k4.b.f84734a, "tempMsgId", "this", "message", "entity", "destination$iv$iv", k4.b.f84734a, "tempMsgId", "this", "message", "entity", "attachments", k4.b.f84734a, "tempMsgId", "this", "entity", "attachments", k4.b.f84734a, "tempMsgId", "this", "entity", "attachments", k4.b.f84734a, "id", "this", "entity", k4.b.f84734a, "id", "this", "entity"}, s = {"L$0", "L$1", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "J$0", "L$0", "L$1", "L$2", "I$0", "J$0", "L$0", "L$1", "L$2", "L$3", "I$0", "J$0", "L$0", "L$1", "L$2", "L$3", "I$0", "J$0", "L$0", "L$1", "L$2", "I$0", "J$0", "L$0", "L$1", "L$2", "I$0", "J$0", "L$0", "L$1", "I$0", "J$0", "L$0", "L$1"})
    /* renamed from: com.im.freechat.data.l$l  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0308l extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40962a;

        /* renamed from: b  reason: collision with root package name */
        Object f40963b;

        /* renamed from: c  reason: collision with root package name */
        Object f40964c;

        /* renamed from: d  reason: collision with root package name */
        Object f40965d;

        /* renamed from: e  reason: collision with root package name */
        Object f40966e;

        /* renamed from: f  reason: collision with root package name */
        Object f40967f;

        /* renamed from: g  reason: collision with root package name */
        Object f40968g;

        /* renamed from: h  reason: collision with root package name */
        int f40969h;

        /* renamed from: i  reason: collision with root package name */
        int f40970i;

        /* renamed from: j  reason: collision with root package name */
        long f40971j;

        /* renamed from: k  reason: collision with root package name */
        /* synthetic */ Object f40972k;

        /* renamed from: m  reason: collision with root package name */
        int f40974m;

        C0308l(Continuation<? super C0308l> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40972k = obj;
            this.f40974m |= Integer.MIN_VALUE;
            return l.this.o0(0, 0, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {}, l = {428}, m = "sendImageMessage", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class l0 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f40975a;

        /* renamed from: c  reason: collision with root package name */
        int f40977c;

        l0(Continuation<? super l0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40975a = obj;
            this.f40977c |= Integer.MIN_VALUE;
            return l.this.q0(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0}, l = {700, 701}, m = "unpinMessage", n = {"this", k4.b.f84734a}, s = {"L$0", "I$0"})
    /* loaded from: classes2.dex */
    public static final class l1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40978a;

        /* renamed from: b  reason: collision with root package name */
        int f40979b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f40980c;

        /* renamed from: e  reason: collision with root package name */
        int f40982e;

        l1(Continuation<? super l1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40980c = obj;
            this.f40982e |= Integer.MIN_VALUE;
            return l.this.B(0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/MessageApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/ForwardMessage200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$forwardMessage$id$1", f = "SyncRepositoryImpl.kt", i = {}, l = {574}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class m extends SuspendLambda implements Function2<MessageApi, Continuation<? super Response<ForwardMessage200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40983a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40984b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f40985c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Message f40986d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(int i4, Message message, Continuation<? super m> continuation) {
            super(2, continuation);
            this.f40985c = i4;
            this.f40986d = message;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            m mVar = new m(this.f40985c, this.f40986d, continuation);
            mVar.f40984b = obj;
            return mVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g MessageApi messageApi, @m8.h Continuation<? super Response<ForwardMessage200Response>> continuation) {
            return ((m) create(messageApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40983a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                ForwardMessageRequest forwardMessageRequest = new ForwardMessageRequest(this.f40985c, this.f40986d.getChatId(), this.f40986d.getMessageId());
                this.f40983a = 1;
                obj = ((MessageApi) this.f40984b).forwardMessage(forwardMessageRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/MessageApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/SendText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$sendImageMessage$2$1", f = "SyncRepositoryImpl.kt", i = {}, l = {BaseResponse.RESULT_CODE_OPERATION_TOO_FREQUENT}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class m0 extends SuspendLambda implements Function2<MessageApi, Continuation<? super Response<SendText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40987a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40988b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ MessageEntity f40989c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ AttachmentEntity f40990d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m0(MessageEntity messageEntity, AttachmentEntity attachmentEntity, Continuation<? super m0> continuation) {
            super(2, continuation);
            this.f40989c = messageEntity;
            this.f40990d = attachmentEntity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            m0 m0Var = new m0(this.f40989c, this.f40990d, continuation);
            m0Var.f40988b = obj;
            return m0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g MessageApi messageApi, @m8.h Continuation<? super Response<SendText200Response>> continuation) {
            return ((m0) create(messageApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40987a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                int chatId = this.f40989c.getChatId();
                String remoteUrl = this.f40990d.getRemoteUrl();
                Intrinsics.checkNotNull(remoteUrl);
                Integer width = this.f40990d.getWidth();
                Intrinsics.checkNotNull(width);
                int intValue = width.intValue();
                Integer height = this.f40990d.getHeight();
                Intrinsics.checkNotNull(height);
                int intValue2 = height.intValue();
                String previewRemoteUrl = this.f40990d.getPreviewRemoteUrl();
                Long fileSize = this.f40990d.getFileSize();
                SendPhotoRequest sendPhotoRequest = new SendPhotoRequest(chatId, new Photo(remoteUrl, intValue, intValue2, previewRemoteUrl, this.f40990d.getMimeType(), this.f40990d.getFileName(), fileSize), this.f40989c.getContent(), this.f40989c.getReplyToMessageId());
                this.f40987a = 1;
                obj = ((MessageApi) this.f40988b).sendPhoto(sendPhotoRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/MessageApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$unpinMessage$2", f = "SyncRepositoryImpl.kt", i = {}, l = {700}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class m1 extends SuspendLambda implements Function2<MessageApi, Continuation<? super Response<EditMessageText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f40991a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f40992b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f40993c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m1(int i4, Continuation<? super m1> continuation) {
            super(2, continuation);
            this.f40993c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            m1 m1Var = new m1(this.f40993c, continuation);
            m1Var.f40992b = obj;
            return m1Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g MessageApi messageApi, @m8.h Continuation<? super Response<EditMessageText200Response>> continuation) {
            return ((m1) create(messageApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f40991a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                UnpinMessageRequest unpinMessageRequest = new UnpinMessageRequest(this.f40993c);
                this.f40991a = 1;
                obj = ((MessageApi) this.f40992b).unpinMessage(unpinMessageRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 0, 0}, l = {523, 535}, m = "forwardMessages", n = {"this", "forwardMessageIds", "currentUserId", k4.b.f84734a}, s = {"L$0", "L$1", "I$0", "I$1"})
    /* loaded from: classes2.dex */
    public static final class n extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f40994a;

        /* renamed from: b  reason: collision with root package name */
        Object f40995b;

        /* renamed from: c  reason: collision with root package name */
        int f40996c;

        /* renamed from: d  reason: collision with root package name */
        int f40997d;

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ Object f40998e;

        /* renamed from: g  reason: collision with root package name */
        int f41000g;

        n(Continuation<? super n> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f40998e = obj;
            this.f41000g |= Integer.MIN_VALUE;
            return l.this.E(0, 0, null, null, null, false, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {}, l = {501}, m = "sendMediaGroupMessage", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class n0 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f41001a;

        /* renamed from: c  reason: collision with root package name */
        int f41003c;

        n0(Continuation<? super n0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41001a = obj;
            this.f41003c |= Integer.MIN_VALUE;
            return l.this.r0(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 1, 1, 1, 2}, l = {366, 376, 399}, m = "uploadAttachments", n = {"this", "attachments", "this", "attachments", "result", "result"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2", "L$0"})
    /* loaded from: classes2.dex */
    public static final class n1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41004a;

        /* renamed from: b  reason: collision with root package name */
        Object f41005b;

        /* renamed from: c  reason: collision with root package name */
        Object f41006c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f41007d;

        /* renamed from: f  reason: collision with root package name */
        int f41009f;

        n1(Continuation<? super n1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41007d = obj;
            this.f41009f |= Integer.MIN_VALUE;
            return l.this.v0(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$forwardMessages$2", f = "SyncRepositoryImpl.kt", i = {0}, l = {537, 536}, m = "invokeSuspend", n = {"$this$coroutineScope"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class o extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super List<? extends Unit>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41010a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f41011b;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ List<Long> f41013d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f41014e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f41015f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SyncRepositoryImpl.kt */
        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$forwardMessages$2$3$1", f = "SyncRepositoryImpl.kt", i = {}, l = {542, 543}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes2.dex */
        public static final class a extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f41016a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f41017b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ l f41018c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ int f41019d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ int f41020e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ Message f41021f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(int i4, l lVar, int i10, int i11, Message message, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f41017b = i4;
                this.f41018c = lVar;
                this.f41019d = i10;
                this.f41020e = i11;
                this.f41021f = message;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new a(this.f41017b, this.f41018c, this.f41019d, this.f41020e, this.f41021f, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f41016a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f41016a = 1;
                    if (kotlinx.coroutines.b1.b(this.f41017b * 100, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    if (i4 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                l lVar = this.f41018c;
                int i10 = this.f41019d;
                int i11 = this.f41020e;
                Message message = this.f41021f;
                this.f41016a = 2;
                if (lVar.o0(i10, i11, message, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
        }

        /* compiled from: Comparisons.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes2.dex */
        public static final class b<T> implements Comparator {
            @Override // java.util.Comparator
            public final int compare(T t9, T t10) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((Message) t9).getSendTime()), Long.valueOf(((Message) t10).getSendTime()));
                return compareValues;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(List<Long> list, int i4, int i10, Continuation<? super o> continuation) {
            super(2, continuation);
            this.f41013d = list;
            this.f41014e = i4;
            this.f41015f = i10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            o oVar = new o(this.f41013d, this.f41014e, this.f41015f, continuation);
            oVar.f41011b = obj;
            return oVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.s0 s0Var, Continuation<? super List<? extends Unit>> continuation) {
            return invoke2(s0Var, (Continuation<? super List<Unit>>) continuation);
        }

        @m8.h
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super List<Unit>> continuation) {
            return ((o) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            kotlinx.coroutines.s0 s0Var;
            Object messagesToForward;
            List sortedWith;
            int collectionSizeOrDefault;
            kotlinx.coroutines.y0 b10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41010a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                s0Var = (kotlinx.coroutines.s0) this.f41011b;
                MessageDao messageDao = l.this.f40784n;
                List<Long> list = this.f41013d;
                this.f41011b = s0Var;
                this.f41010a = 1;
                messagesToForward = messageDao.getMessagesToForward(list, this);
                if (messagesToForward == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                if (i4 == 2) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                s0Var = (kotlinx.coroutines.s0) this.f41011b;
                ResultKt.throwOnFailure(obj);
                messagesToForward = obj;
            }
            l lVar = l.this;
            ArrayList arrayList = new ArrayList();
            for (FullMessageEntity fullMessageEntity : (Iterable) messagesToForward) {
                Message map$default = MessageMapper.map$default(lVar.f40787q, fullMessageEntity, lVar.f40789s, null, 4, null);
                if (map$default != null) {
                    arrayList.add(map$default);
                }
            }
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new b());
            l lVar2 = l.this;
            int i10 = this.f41014e;
            int i11 = this.f41015f;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(sortedWith, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            int i12 = 0;
            for (Object obj2 : sortedWith) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                b10 = kotlinx.coroutines.l.b(s0Var, null, null, new a(i12, lVar2, i10, i11, (Message) obj2, null), 3, null);
                arrayList2.add(b10);
                i12 = i13;
            }
            Object[] array = arrayList2.toArray(new kotlinx.coroutines.y0[0]);
            Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            kotlinx.coroutines.y0[] y0VarArr = (kotlinx.coroutines.y0[]) array;
            this.f41011b = null;
            this.f41010a = 2;
            Object b11 = kotlinx.coroutines.f.b((kotlinx.coroutines.y0[]) Arrays.copyOf(y0VarArr, y0VarArr.length), this);
            return b11 == coroutine_suspended ? coroutine_suspended : b11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/MessageApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/SendText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$sendMediaGroupMessage$2", f = "SyncRepositoryImpl.kt", i = {}, l = {TypedValues.Position.TYPE_DRAWPATH}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class o0 extends SuspendLambda implements Function2<MessageApi, Continuation<? super Response<SendText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41022a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f41023b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ MessageEntity f41024c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ l f41025d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ List<AttachmentEntity> f41026e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o0(MessageEntity messageEntity, l lVar, List<AttachmentEntity> list, Continuation<? super o0> continuation) {
            super(2, continuation);
            this.f41024c = messageEntity;
            this.f41025d = lVar;
            this.f41026e = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            o0 o0Var = new o0(this.f41024c, this.f41025d, this.f41026e, continuation);
            o0Var.f41023b = obj;
            return o0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g MessageApi messageApi, @m8.h Continuation<? super Response<SendText200Response>> continuation) {
            return ((o0) create(messageApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41022a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                SendMediaGroupRequest sendMediaGroupRequest = new SendMediaGroupRequest(this.f41024c.getChatId(), this.f41025d.f40787q.attachmentsToMediaGroup(this.f41026e), this.f41024c.getContent(), this.f41024c.getReplyToMessageId());
                this.f41022a = 1;
                obj = ((MessageApi) this.f41023b).sendMediaGroup(sendMediaGroupRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$uploadAttachments$2", f = "SyncRepositoryImpl.kt", i = {0, 0}, l = {370}, m = "invokeSuspend", n = {"it", "prepared"}, s = {"L$0", "L$1"})
    /* loaded from: classes2.dex */
    public static final class o1 extends SuspendLambda implements Function3<kotlinx.coroutines.s0, AttachmentEntity, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f41027a;

        /* renamed from: b  reason: collision with root package name */
        int f41028b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f41029c;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ List<AttachmentEntity> f41031e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ List<AttachmentEntity> f41032f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o1(List<AttachmentEntity> list, List<AttachmentEntity> list2, Continuation<? super o1> continuation) {
            super(3, continuation);
            this.f41031e = list;
            this.f41032f = list2;
        }

        @Override // kotlin.jvm.functions.Function3
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.g AttachmentEntity attachmentEntity, @m8.h Continuation<? super Unit> continuation) {
            o1 o1Var = new o1(this.f41031e, this.f41032f, continuation);
            o1Var.f41029c = attachmentEntity;
            return o1Var.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            AttachmentEntity attachmentEntity;
            AttachmentEntity attachmentEntity2;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41028b;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                attachmentEntity = (AttachmentEntity) this.f41029c;
                Timber.b bVar = Timber.f93860a;
                bVar.k("Compressing: Preparing " + attachmentEntity.getMediaId() + " for upload", new Object[0]);
                com.im.freechat.domain.h hVar = l.this.f40778h;
                Attachment mapAttachment = l.this.f40787q.mapAttachment(attachmentEntity);
                Intrinsics.checkNotNull(mapAttachment);
                AttachmentEntity map = l.this.f40787q.map(hVar.h(mapAttachment));
                AttachmentDao attachmentDao = l.this.f40785o;
                this.f41029c = attachmentEntity;
                this.f41027a = map;
                this.f41028b = 1;
                if (attachmentDao.insertOrUpdate(map, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                attachmentEntity2 = map;
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                attachmentEntity2 = (AttachmentEntity) this.f41027a;
                attachmentEntity = (AttachmentEntity) this.f41029c;
                ResultKt.throwOnFailure(obj);
            }
            this.f41031e.set(this.f41032f.indexOf(attachmentEntity), attachmentEntity2);
            Timber.b bVar2 = Timber.f93860a;
            bVar2.k("Compressing: Preparing " + attachmentEntity.getMediaId() + " finished", new Object[0]);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6}, l = {874, 879, 880, 882, 900, 909, 910}, m = "getOrCreateSingleChatIdForUserId", n = {"this", "userId", "this", "userId", "this", "userId", "this", "userId", "this", "userId", "this", "userId", "userId"}, s = {"L$0", "I$0", "L$0", "I$0", "L$0", "I$0", "L$0", "I$0", "L$0", "I$0", "L$0", "I$0", "I$0"})
    /* loaded from: classes2.dex */
    public static final class p extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41033a;

        /* renamed from: b  reason: collision with root package name */
        int f41034b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f41035c;

        /* renamed from: e  reason: collision with root package name */
        int f41037e;

        p(Continuation<? super p> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41035c = obj;
            this.f41037e |= Integer.MIN_VALUE;
            return l.this.s(0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 6, 7}, l = {286, 299, 299, 302, 303, 306, 309, 311}, m = "sendMessage", n = {"this", "content", "attachmentUris", "replyToMessageId", "mentions", "currentUserId", k4.b.f84734a, "mentionAll", "removeOnFail", "this", "msg", "destination$iv$iv", "removeOnFail", "tempId", "this", "msg", "destination$iv$iv", "removeOnFail", "tempId", "this", "msg", "attachments", "removeOnFail", "this", "msg", "attachments", "removeOnFail", "this", "msg", "removeOnFail", "e", "e"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "I$0", "I$1", "Z$0", "Z$1", "L$0", "L$1", "L$2", "Z$0", "J$0", "L$0", "L$1", "L$2", "Z$0", "J$0", "L$0", "L$1", "L$2", "Z$0", "L$0", "L$1", "L$2", "Z$0", "L$0", "L$1", "Z$0", "L$0", "L$0"})
    /* loaded from: classes2.dex */
    public static final class p0 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41038a;

        /* renamed from: b  reason: collision with root package name */
        Object f41039b;

        /* renamed from: c  reason: collision with root package name */
        Object f41040c;

        /* renamed from: d  reason: collision with root package name */
        Object f41041d;

        /* renamed from: e  reason: collision with root package name */
        Object f41042e;

        /* renamed from: f  reason: collision with root package name */
        Object f41043f;

        /* renamed from: g  reason: collision with root package name */
        int f41044g;

        /* renamed from: h  reason: collision with root package name */
        int f41045h;

        /* renamed from: i  reason: collision with root package name */
        boolean f41046i;

        /* renamed from: j  reason: collision with root package name */
        boolean f41047j;

        /* renamed from: k  reason: collision with root package name */
        long f41048k;

        /* renamed from: l  reason: collision with root package name */
        long f41049l;

        /* renamed from: m  reason: collision with root package name */
        /* synthetic */ Object f41050m;

        /* renamed from: o  reason: collision with root package name */
        int f41052o;

        p0(Continuation<? super p0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41050m = obj;
            this.f41052o |= Integer.MIN_VALUE;
            return l.this.Q(0, 0, null, null, null, false, null, false, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$uploadAttachments$3", f = "SyncRepositoryImpl.kt", i = {0, 0, 1, 1, 2, 2}, l = {382, 385, 388}, m = "invokeSuspend", n = {"it", "file", "it", "url", "it", "previewUrl"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$2"})
    /* loaded from: classes2.dex */
    public static final class p1 extends SuspendLambda implements Function3<kotlinx.coroutines.s0, AttachmentEntity, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f41053a;

        /* renamed from: b  reason: collision with root package name */
        Object f41054b;

        /* renamed from: c  reason: collision with root package name */
        int f41055c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f41056d;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<List<AttachmentEntity>> f41058f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SyncRepositoryImpl.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/sources/api/RemoteApi;", "Lretrofit2/Response;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$uploadAttachments$3$1", f = "SyncRepositoryImpl.kt", i = {}, l = {385}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes2.dex */
        public static final class a extends SuspendLambda implements Function2<RemoteApi, Continuation<? super Response<Unit>>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f41059a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f41060b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f41061c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ RequestBody f41062d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(String str, RequestBody requestBody, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f41061c = str;
                this.f41062d = requestBody;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f41061c, this.f41062d, continuation);
                aVar.f41060b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g RemoteApi remoteApi, @m8.h Continuation<? super Response<Unit>> continuation) {
                return ((a) create(remoteApi, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f41059a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    String str = this.f41061c;
                    RequestBody requestBody = this.f41062d;
                    this.f41059a = 1;
                    obj = ((RemoteApi) this.f41060b).uploadFile(str, requestBody, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return obj;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SyncRepositoryImpl.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/FileApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/PreSignedUrl200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$uploadAttachments$3$url$1", f = "SyncRepositoryImpl.kt", i = {}, l = {382}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes2.dex */
        public static final class b extends SuspendLambda implements Function2<FileApi, Continuation<? super Response<PreSignedUrl200Response>>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f41063a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f41064b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ File f41065c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(File file, Continuation<? super b> continuation) {
                super(2, continuation);
                this.f41065c = file;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                b bVar = new b(this.f41065c, continuation);
                bVar.f41064b = obj;
                return bVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g FileApi fileApi, @m8.h Continuation<? super Response<PreSignedUrl200Response>> continuation) {
                return ((b) create(fileApi, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f41063a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f41063a = 1;
                    obj = ((FileApi) this.f41064b).preSignedUrl("preview_" + this.f41065c.getName(), this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p1(Ref.ObjectRef<List<AttachmentEntity>> objectRef, Continuation<? super p1> continuation) {
            super(3, continuation);
            this.f41058f = objectRef;
        }

        @Override // kotlin.jvm.functions.Function3
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.g AttachmentEntity attachmentEntity, @m8.h Continuation<? super Unit> continuation) {
            p1 p1Var = new p1(this.f41058f, continuation);
            p1Var.f41056d = attachmentEntity;
            return p1Var.invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x0101 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0102  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x011e  */
        /* JADX WARN: Type inference failed for: r5v7, types: [T, java.util.Collection, java.util.ArrayList] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r33) {
            /*
                Method dump skipped, instructions count: 354
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.p1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {}, l = {862}, m = "getUser", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class q extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41066a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f41067b;

        /* renamed from: d  reason: collision with root package name */
        int f41069d;

        q(Continuation<? super q> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41067b = obj;
            this.f41069d |= Integer.MIN_VALUE;
            return l.this.getUser(0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 1, 1, 2, 2, 2, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8}, l = {324, 335, 336, 339, 342, 343, 344, 351, 357, 359}, m = "sendProcessedMessageToRemote", n = {"this", "message", "this", "message", "this", "message", "uploadedAttachments", "this", "message", "this", "message", "uploadedAttachments", "this", "message", "uploadedAttachments", "this", "message", "uploadedAttachments", "this", "message", "uploadedAttachments", "id", "this", "message", "id"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2"})
    /* loaded from: classes2.dex */
    public static final class q0 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41070a;

        /* renamed from: b  reason: collision with root package name */
        Object f41071b;

        /* renamed from: c  reason: collision with root package name */
        Object f41072c;

        /* renamed from: d  reason: collision with root package name */
        Object f41073d;

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ Object f41074e;

        /* renamed from: g  reason: collision with root package name */
        int f41076g;

        q0(Continuation<? super q0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41074e = obj;
            this.f41076g |= Integer.MIN_VALUE;
            return l.this.s0(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$uploadAttachments$4", f = "SyncRepositoryImpl.kt", i = {0, 0, 1, 1, 1, 2, 2}, l = {401, 407, 410}, m = "invokeSuspend", n = {"it", "file", "it", "file", "url", "it", "previewUrl"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$2"})
    /* loaded from: classes2.dex */
    public static final class q1 extends SuspendLambda implements Function3<kotlinx.coroutines.s0, AttachmentEntity, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f41077a;

        /* renamed from: b  reason: collision with root package name */
        Object f41078b;

        /* renamed from: c  reason: collision with root package name */
        int f41079c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f41080d;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<List<AttachmentEntity>> f41082f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SyncRepositoryImpl.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/sources/api/RemoteApi;", "Lretrofit2/Response;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$uploadAttachments$4$1", f = "SyncRepositoryImpl.kt", i = {}, l = {407}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes2.dex */
        public static final class a extends SuspendLambda implements Function2<RemoteApi, Continuation<? super Response<Unit>>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f41083a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f41084b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f41085c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ RequestBody f41086d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(String str, RequestBody requestBody, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f41085c = str;
                this.f41086d = requestBody;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f41085c, this.f41086d, continuation);
                aVar.f41084b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g RemoteApi remoteApi, @m8.h Continuation<? super Response<Unit>> continuation) {
                return ((a) create(remoteApi, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f41083a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    String str = this.f41085c;
                    RequestBody requestBody = this.f41086d;
                    this.f41083a = 1;
                    obj = ((RemoteApi) this.f41084b).uploadFile(str, requestBody, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return obj;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SyncRepositoryImpl.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/FileApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/PreSignedUrl200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$uploadAttachments$4$url$1", f = "SyncRepositoryImpl.kt", i = {}, l = {401}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes2.dex */
        public static final class b extends SuspendLambda implements Function2<FileApi, Continuation<? super Response<PreSignedUrl200Response>>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f41087a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f41088b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ File f41089c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(File file, Continuation<? super b> continuation) {
                super(2, continuation);
                this.f41089c = file;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                b bVar = new b(this.f41089c, continuation);
                bVar.f41088b = obj;
                return bVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g FileApi fileApi, @m8.h Continuation<? super Response<PreSignedUrl200Response>> continuation) {
                return ((b) create(fileApi, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f41087a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    String name = this.f41089c.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "file.name");
                    this.f41087a = 1;
                    obj = ((FileApi) this.f41088b).preSignedUrl(name, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q1(Ref.ObjectRef<List<AttachmentEntity>> objectRef, Continuation<? super q1> continuation) {
            super(3, continuation);
            this.f41082f = objectRef;
        }

        @Override // kotlin.jvm.functions.Function3
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.g AttachmentEntity attachmentEntity, @m8.h Continuation<? super Unit> continuation) {
            q1 q1Var = new q1(this.f41082f, continuation);
            q1Var.f41080d = attachmentEntity;
            return q1Var.invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x010d A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:27:0x010e  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x012a  */
        /* JADX WARN: Type inference failed for: r4v3, types: [T, java.util.Collection, java.util.ArrayList] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r35) {
            /*
                Method dump skipped, instructions count: 367
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.q1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/UserApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/GetUser200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$getUser$2", f = "SyncRepositoryImpl.kt", i = {}, l = {862}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class r extends SuspendLambda implements Function2<UserApi, Continuation<? super Response<GetUser200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41090a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f41091b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f41092c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r(int i4, Continuation<? super r> continuation) {
            super(2, continuation);
            this.f41092c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            r rVar = new r(this.f41092c, continuation);
            rVar.f41091b = obj;
            return rVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g UserApi userApi, @m8.h Continuation<? super Response<GetUser200Response>> continuation) {
            return ((r) create(userApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41090a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                int i10 = this.f41092c;
                this.f41090a = 1;
                obj = ((UserApi) this.f41091b).getUser(i10, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/MessageApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/SendText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$sendProcessedMessageToRemote$id$1", f = "SyncRepositoryImpl.kt", i = {}, l = {325}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class r0 extends SuspendLambda implements Function2<MessageApi, Continuation<? super Response<SendText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41093a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f41094b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ MessageEntity f41095c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r0(MessageEntity messageEntity, Continuation<? super r0> continuation) {
            super(2, continuation);
            this.f41095c = messageEntity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            r0 r0Var = new r0(this.f41095c, continuation);
            r0Var.f41094b = obj;
            return r0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g MessageApi messageApi, @m8.h Continuation<? super Response<SendText200Response>> continuation) {
            return ((r0) create(messageApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41093a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                int chatId = this.f41095c.getChatId();
                String content = this.f41095c.getContent();
                Intrinsics.checkNotNull(content);
                SendTextRequest sendTextRequest = new SendTextRequest(chatId, content, this.f41095c.getReplyToMessageId());
                this.f41093a = 1;
                obj = ((MessageApi) this.f41094b).sendText(sendTextRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/UserApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$hideLastOnline$2", f = "SyncRepositoryImpl.kt", i = {}, l = {866}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    static final class s extends SuspendLambda implements Function2<UserApi, Continuation<? super Response<EditMessageText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41096a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f41097b;

        s(Continuation<? super s> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            s sVar = new s(continuation);
            sVar.f41097b = obj;
            return sVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g UserApi userApi, @m8.h Continuation<? super Response<EditMessageText200Response>> continuation) {
            return ((s) create(userApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41096a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                this.f41096a = 1;
                obj = ((UserApi) this.f41097b).hideLastSeen(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {}, l = {454}, m = "sendVideoMessage", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class s0 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f41098a;

        /* renamed from: c  reason: collision with root package name */
        int f41100c;

        s0(Continuation<? super s0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41098a = obj;
            this.f41100c |= Integer.MIN_VALUE;
            return l.this.t0(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 1, 1}, l = {151, 152, 153}, m = "leaveChat", n = {"this", k4.b.f84734a, "this", k4.b.f84734a}, s = {"L$0", "I$0", "L$0", "I$0"})
    /* loaded from: classes2.dex */
    public static final class t extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41101a;

        /* renamed from: b  reason: collision with root package name */
        int f41102b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f41103c;

        /* renamed from: e  reason: collision with root package name */
        int f41105e;

        t(Continuation<? super t> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41103c = obj;
            this.f41105e |= Integer.MIN_VALUE;
            return l.this.K(0, 0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/MessageApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/SendText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$sendVideoMessage$2$1", f = "SyncRepositoryImpl.kt", i = {}, l = {455}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class t0 extends SuspendLambda implements Function2<MessageApi, Continuation<? super Response<SendText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41106a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f41107b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ MessageEntity f41108c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ AttachmentEntity f41109d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t0(MessageEntity messageEntity, AttachmentEntity attachmentEntity, Continuation<? super t0> continuation) {
            super(2, continuation);
            this.f41108c = messageEntity;
            this.f41109d = attachmentEntity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            t0 t0Var = new t0(this.f41108c, this.f41109d, continuation);
            t0Var.f41107b = obj;
            return t0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g MessageApi messageApi, @m8.h Continuation<? super Response<SendText200Response>> continuation) {
            return ((t0) create(messageApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41106a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                int chatId = this.f41108c.getChatId();
                String remoteUrl = this.f41109d.getRemoteUrl();
                Intrinsics.checkNotNull(remoteUrl);
                Integer width = this.f41109d.getWidth();
                Intrinsics.checkNotNull(width);
                int intValue = width.intValue();
                Integer height = this.f41109d.getHeight();
                Intrinsics.checkNotNull(height);
                int intValue2 = height.intValue();
                String previewRemoteUrl = this.f41109d.getPreviewRemoteUrl();
                Long fileSize = this.f41109d.getFileSize();
                SendVideoRequest sendVideoRequest = new SendVideoRequest(chatId, new Video(remoteUrl, intValue, intValue2, previewRemoteUrl, this.f41109d.getDuration(), this.f41109d.getFileName(), fileSize, this.f41109d.getMimeType()), this.f41108c.getContent(), this.f41108c.getReplyToMessageId());
                this.f41106a = 1;
                obj = ((MessageApi) this.f41107b).sendVideo(sendVideoRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/ChatApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$leaveChat$2", f = "SyncRepositoryImpl.kt", i = {}, l = {151}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class u extends SuspendLambda implements Function2<ChatApi, Continuation<? super Response<EditMessageText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41110a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f41111b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f41112c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        u(int i4, Continuation<? super u> continuation) {
            super(2, continuation);
            this.f41112c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            u uVar = new u(this.f41112c, continuation);
            uVar.f41111b = obj;
            return uVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g ChatApi chatApi, @m8.h Continuation<? super Response<EditMessageText200Response>> continuation) {
            return ((u) create(chatApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            List listOf;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41110a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                listOf = CollectionsKt__CollectionsJVMKt.listOf(Boxing.boxInt(this.f41112c));
                DeleteChatsRequest deleteChatsRequest = new DeleteChatsRequest(listOf);
                this.f41110a = 1;
                obj = ((ChatApi) this.f41111b).deleteChats(deleteChatsRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/UserApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$showLastOnline$2", f = "SyncRepositoryImpl.kt", i = {}, l = {870}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    static final class u0 extends SuspendLambda implements Function2<UserApi, Continuation<? super Response<EditMessageText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41113a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f41114b;

        u0(Continuation<? super u0> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            u0 u0Var = new u0(continuation);
            u0Var.f41114b = obj;
            return u0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g UserApi userApi, @m8.h Continuation<? super Response<EditMessageText200Response>> continuation) {
            return ((u0) create(userApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41113a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                this.f41113a = 1;
                obj = ((UserApi) this.f41114b).showLastSeen(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 0}, l = {668}, m = "modifyMediaMessageCaption", n = {"this", "newContent", "messageId"}, s = {"L$0", "L$1", "J$0"})
    /* loaded from: classes2.dex */
    public static final class v extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41115a;

        /* renamed from: b  reason: collision with root package name */
        Object f41116b;

        /* renamed from: c  reason: collision with root package name */
        long f41117c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f41118d;

        /* renamed from: f  reason: collision with root package name */
        int f41120f;

        v(Continuation<? super v> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41118d = obj;
            this.f41120f |= Integer.MIN_VALUE;
            return l.this.T(0, 0L, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {125, 126, 127}, m = "syncChat", n = {"this", "userId", k4.b.f84734a, "this", "it", "userId", k4.b.f84734a}, s = {"L$0", "I$0", "I$1", "L$0", "L$1", "I$0", "I$1"})
    /* loaded from: classes2.dex */
    public static final class v0 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41121a;

        /* renamed from: b  reason: collision with root package name */
        Object f41122b;

        /* renamed from: c  reason: collision with root package name */
        int f41123c;

        /* renamed from: d  reason: collision with root package name */
        int f41124d;

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ Object f41125e;

        /* renamed from: g  reason: collision with root package name */
        int f41127g;

        v0(Continuation<? super v0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41125e = obj;
            this.f41127g |= Integer.MIN_VALUE;
            return l.this.g(0, 0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 0}, l = {657}, m = "modifyTextMessage", n = {"this", "newContent", "messageId"}, s = {"L$0", "L$1", "J$0"})
    /* loaded from: classes2.dex */
    public static final class w extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41128a;

        /* renamed from: b  reason: collision with root package name */
        Object f41129b;

        /* renamed from: c  reason: collision with root package name */
        long f41130c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f41131d;

        /* renamed from: f  reason: collision with root package name */
        int f41133f;

        w(Continuation<? super w> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41131d = obj;
            this.f41133f |= Integer.MIN_VALUE;
            return l.this.A(0, 0L, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/ChatApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/GetChat200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$syncChat$2", f = "SyncRepositoryImpl.kt", i = {}, l = {125}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class w0 extends SuspendLambda implements Function2<ChatApi, Continuation<? super Response<GetChat200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41134a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f41135b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f41136c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        w0(int i4, Continuation<? super w0> continuation) {
            super(2, continuation);
            this.f41136c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            w0 w0Var = new w0(this.f41136c, continuation);
            w0Var.f41135b = obj;
            return w0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g ChatApi chatApi, @m8.h Continuation<? super Response<GetChat200Response>> continuation) {
            return ((w0) create(chatApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41134a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                int i10 = this.f41136c;
                this.f41134a = 1;
                obj = ((ChatApi) this.f41135b).getChat(i10, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/MessageApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$modifyTextMessage$2", f = "SyncRepositoryImpl.kt", i = {}, l = {657}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class x extends SuspendLambda implements Function2<MessageApi, Continuation<? super Response<EditMessageText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41137a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f41138b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f41139c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ long f41140d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f41141e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        x(int i4, long j4, String str, Continuation<? super x> continuation) {
            super(2, continuation);
            this.f41139c = i4;
            this.f41140d = j4;
            this.f41141e = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            x xVar = new x(this.f41139c, this.f41140d, this.f41141e, continuation);
            xVar.f41138b = obj;
            return xVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g MessageApi messageApi, @m8.h Continuation<? super Response<EditMessageText200Response>> continuation) {
            return ((x) create(messageApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41137a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                EditMessageTextRequest editMessageTextRequest = new EditMessageTextRequest(this.f41139c, this.f41140d, this.f41141e);
                this.f41137a = 1;
                obj = ((MessageApi) this.f41138b).editMessageText(editMessageTextRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10}, l = {66, 82, 83, 84, 91, 92, 97, 98, 100, 111, 113}, m = "syncChats", n = {"this", "presentIds", "curPage", "userId", "this", "presentIds", "curPage", "$this$syncChats_u24lambda_u2d12", "messagesAndAttachments", "userId", "this", "presentIds", "curPage", "$this$syncChats_u24lambda_u2d12", "userId", "this", "presentIds", "curPage", "$this$syncChats_u24lambda_u2d12", "userId", "this", "presentIds", "curPage", "$this$syncChats_u24lambda_u2d12", "it", "member", "userId", "this", "presentIds", "curPage", "$this$syncChats_u24lambda_u2d12", "it", "userId", "this", "presentIds", "curPage", "$this$syncChats_u24lambda_u2d12", "it", com.im.freechat.ui.create.choosemember.h.f43540d, "userId", "this", "presentIds", "curPage", "$this$syncChats_u24lambda_u2d12", "it", "userId", "this", "presentIds", "curPage", "$this$syncChats_u24lambda_u2d12", "it", "userId", "this", "presentIds", "curPage", "$this$syncChats_u24lambda_u2d12", "it", "userId", "this", "presentIds", "curPage", "$this$syncChats_u24lambda_u2d12", "userId"}, s = {"L$0", "L$1", "L$2", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "I$0", "L$0", "L$1", "L$2", "L$3", "I$0", "L$0", "L$1", "L$2", "L$3", "I$0", "L$0", "L$1", "L$2", "L$3", "L$5", "L$6", "I$0", "L$0", "L$1", "L$2", "L$3", "L$5", "I$0", "L$0", "L$1", "L$2", "L$3", "L$5", "L$6", "I$0", "L$0", "L$1", "L$2", "L$3", "L$5", "I$0", "L$0", "L$1", "L$2", "L$3", "L$5", "I$0", "L$0", "L$1", "L$2", "L$3", "L$5", "I$0", "L$0", "L$1", "L$2", "L$3", "I$0"})
    /* loaded from: classes2.dex */
    public static final class x0 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41142a;

        /* renamed from: b  reason: collision with root package name */
        Object f41143b;

        /* renamed from: c  reason: collision with root package name */
        Object f41144c;

        /* renamed from: d  reason: collision with root package name */
        Object f41145d;

        /* renamed from: e  reason: collision with root package name */
        Object f41146e;

        /* renamed from: f  reason: collision with root package name */
        Object f41147f;

        /* renamed from: g  reason: collision with root package name */
        Object f41148g;

        /* renamed from: h  reason: collision with root package name */
        int f41149h;

        /* renamed from: i  reason: collision with root package name */
        /* synthetic */ Object f41150i;

        /* renamed from: k  reason: collision with root package name */
        int f41152k;

        x0(Continuation<? super x0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41150i = obj;
            this.f41152k |= Integer.MIN_VALUE;
            return l.this.F(0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 0}, l = {694, 695}, m = "pinMessage", n = {"this", "message"}, s = {"L$0", "L$1"})
    /* loaded from: classes2.dex */
    public static final class y extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41153a;

        /* renamed from: b  reason: collision with root package name */
        Object f41154b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f41155c;

        /* renamed from: e  reason: collision with root package name */
        int f41157e;

        y(Continuation<? super y> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41155c = obj;
            this.f41157e |= Integer.MIN_VALUE;
            return l.this.i(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/ChatApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/GetChats200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$syncChats$2", f = "SyncRepositoryImpl.kt", i = {}, l = {66}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class y0 extends SuspendLambda implements Function2<ChatApi, Continuation<? super Response<GetChats200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41158a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f41159b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f41160c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        y0(Ref.IntRef intRef, Continuation<? super y0> continuation) {
            super(2, continuation);
            this.f41160c = intRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            y0 y0Var = new y0(this.f41160c, continuation);
            y0Var.f41159b = obj;
            return y0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g ChatApi chatApi, @m8.h Continuation<? super Response<GetChats200Response>> continuation) {
            return ((y0) create(chatApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41158a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                int i10 = this.f41160c.element;
                this.f41158a = 1;
                obj = ((ChatApi) this.f41159b).getChats(i10, 50, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/api/MessageApi;", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl$pinMessage$2", f = "SyncRepositoryImpl.kt", i = {}, l = {694}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class z extends SuspendLambda implements Function2<MessageApi, Continuation<? super Response<EditMessageText200Response>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41161a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f41162b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Message f41163c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        z(Message message, Continuation<? super z> continuation) {
            super(2, continuation);
            this.f41163c = message;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            z zVar = new z(this.f41163c, continuation);
            zVar.f41162b = obj;
            return zVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g MessageApi messageApi, @m8.h Continuation<? super Response<EditMessageText200Response>> continuation) {
            return ((z) create(messageApi, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41161a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                PinMessageRequest pinMessageRequest = new PinMessageRequest(this.f41163c.getChatId(), this.f41163c.getMessageId());
                this.f41161a = 1;
                obj = ((MessageApi) this.f41162b).pinMessage(pinMessageRequest, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SyncRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.SyncRepositoryImpl", f = "SyncRepositoryImpl.kt", i = {0, 1, 1, 1, 2, 2}, l = {817, 819, 822, 824}, m = "syncFriendRequests", n = {"this", "this", "destination$iv$iv", "it", "this", "reqEntities"}, s = {"L$0", "L$0", "L$1", "L$3", "L$0", "L$1"})
    /* loaded from: classes2.dex */
    public static final class z0 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41164a;

        /* renamed from: b  reason: collision with root package name */
        Object f41165b;

        /* renamed from: c  reason: collision with root package name */
        Object f41166c;

        /* renamed from: d  reason: collision with root package name */
        Object f41167d;

        /* renamed from: e  reason: collision with root package name */
        Object f41168e;

        /* renamed from: f  reason: collision with root package name */
        /* synthetic */ Object f41169f;

        /* renamed from: h  reason: collision with root package name */
        int f41171h;

        z0(Continuation<? super z0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41169f = obj;
            this.f41171h |= Integer.MIN_VALUE;
            return l.this.a(this);
        }
    }

    public l(@m8.g MainDatabase database, @m8.g ChatApi chatApi, @m8.g FriendApi friendApi, @m8.g UserApi userApi, @m8.g MessageApi messageApi, @m8.g FileApi fileApi, @m8.g RemoteApi remoteApi, @m8.g ChatMapper chatMapper, @m8.g com.im.freechat.domain.h fileUtil, @m8.g com.im.freechat.domain.q serverDateRepository, @m8.g com.im.freechat.domain.n notificationManager) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(chatApi, "chatApi");
        Intrinsics.checkNotNullParameter(friendApi, "friendApi");
        Intrinsics.checkNotNullParameter(userApi, "userApi");
        Intrinsics.checkNotNullParameter(messageApi, "messageApi");
        Intrinsics.checkNotNullParameter(fileApi, "fileApi");
        Intrinsics.checkNotNullParameter(remoteApi, "remoteApi");
        Intrinsics.checkNotNullParameter(chatMapper, "chatMapper");
        Intrinsics.checkNotNullParameter(fileUtil, "fileUtil");
        Intrinsics.checkNotNullParameter(serverDateRepository, "serverDateRepository");
        Intrinsics.checkNotNullParameter(notificationManager, "notificationManager");
        this.f40771a = chatApi;
        this.f40772b = friendApi;
        this.f40773c = userApi;
        this.f40774d = messageApi;
        this.f40775e = fileApi;
        this.f40776f = remoteApi;
        this.f40777g = chatMapper;
        this.f40778h = fileUtil;
        this.f40779i = serverDateRepository;
        this.f40780j = notificationManager;
        this.f40781k = database.chatDao();
        this.f40782l = database.userDao();
        this.f40783m = database.memberDao();
        this.f40784n = database.messageDao();
        this.f40785o = database.attachmentDao();
        this.f40786p = database.friendStatusDao();
        this.f40787q = new MessageMapper();
        this.f40788r = new FriendStatusMapper();
        this.f40789s = new UserEntityMapper();
        this.f40790t = kotlinx.coroutines.flow.j0.a(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x012b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0155 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object m0(com.im.freechat.data.openapigen.models.Chat r9, int r10, kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.m0(com.im.freechat.data.openapigen.models.Chat, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object n0(boolean r5, kotlin.coroutines.Continuation<? super java.lang.Long> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.data.l.f
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.data.l$f r0 = (com.im.freechat.data.l.f) r0
            int r1 = r0.f40852c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f40852c = r1
            goto L18
        L13:
            com.im.freechat.data.l$f r0 = new com.im.freechat.data.l$f
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f40850a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f40852c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            goto L46
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            if (r5 == 0) goto L3b
            long r5 = java.lang.System.nanoTime()
            goto L54
        L3b:
            com.im.freechat.data.sources.database.entities.message.MessageDao r5 = r4.f40784n
            r0.f40852c = r3
            java.lang.Object r6 = r5.getLastMessageId(r0)
            if (r6 != r1) goto L46
            return r1
        L46:
            java.lang.Long r6 = (java.lang.Long) r6
            if (r6 == 0) goto L4f
            long r5 = r6.longValue()
            goto L51
        L4f:
            r5 = 0
        L51:
            r0 = 1
            long r5 = r5 + r0
        L54:
            java.lang.Long r5 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.n0(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(2:3|(4:5|6|7|8))|107|6|7|8|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0043, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0077, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0078, code lost:
        r16 = r10;
        r6 = r11;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 10, insn: 0x0078: MOVE  (r16 I:??[OBJECT, ARRAY]) = (r10 I:??[OBJECT, ARRAY]), block:B:25:0x0078 */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x007a: MOVE  (r6 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:25:0x0078 */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01de A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x029d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02df A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02f0 A[Catch: Exception -> 0x033a, TryCatch #2 {Exception -> 0x033a, blocks: (B:77:0x02ea, B:79:0x02f0, B:82:0x0322, B:76:0x02e3), top: B:100:0x02e3 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0339 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0386 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v14, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v6, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v20, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0220 -> B:54:0x0228). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object o0(int r44, int r45, com.im.freechat.shared.entities.message.Message r46, kotlin.coroutines.Continuation<? super kotlin.Unit> r47) {
        /*
            Method dump skipped, instructions count: 932
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.o0(int, int, com.im.freechat.shared.entities.message.Message, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object p0(com.im.freechat.data.sources.database.entities.message.MessageEntity r10, com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity r11, kotlin.coroutines.Continuation<? super java.lang.Long> r12) {
        /*
            r9 = this;
            boolean r0 = r12 instanceof com.im.freechat.data.l.g0
            if (r0 == 0) goto L13
            r0 = r12
            com.im.freechat.data.l$g0 r0 = (com.im.freechat.data.l.g0) r0
            int r1 = r0.f40881c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f40881c = r1
            goto L18
        L13:
            com.im.freechat.data.l$g0 r0 = new com.im.freechat.data.l$g0
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.f40879a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f40881c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r12)
            goto L68
        L29:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L31:
            kotlin.ResultKt.throwOnFailure(r12)
            com.im.freechat.data.openapigen.api.MessageApi r12 = r9.f40774d
            com.im.freechat.data.openapigen.models.SendDocumentRequest r2 = new com.im.freechat.data.openapigen.models.SendDocumentRequest
            int r4 = r10.getChatId()
            java.lang.String r5 = r11.getRemoteUrl()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            java.lang.Long r6 = r11.getFileSize()
            java.lang.String r7 = r11.getFileName()
            java.lang.String r11 = r11.getMimeType()
            com.im.freechat.data.openapigen.models.Document r8 = new com.im.freechat.data.openapigen.models.Document
            r8.<init>(r5, r7, r6, r11)
            java.lang.String r11 = r10.getContent()
            java.lang.Long r10 = r10.getReplyToMessageId()
            r2.<init>(r4, r8, r11, r10)
            r0.f40881c = r3
            java.lang.Object r12 = r12.sendDocument(r2, r0)
            if (r12 != r1) goto L68
            return r1
        L68:
            retrofit2.Response r12 = (retrofit2.Response) r12
            java.lang.Object r10 = r12.body()
            com.im.freechat.data.openapigen.models.SendText200Response r10 = (com.im.freechat.data.openapigen.models.SendText200Response) r10
            if (r10 == 0) goto L7b
            long r10 = r10.getData()
            java.lang.Long r10 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r10)
            goto L7c
        L7b:
            r10 = 0
        L7c:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r10)
            long r10 = r10.longValue()
            java.lang.Long r10 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r10)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.p0(com.im.freechat.data.sources.database.entities.message.MessageEntity, com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object q0(com.im.freechat.data.sources.database.entities.message.MessageEntity r6, com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity r7, kotlin.coroutines.Continuation<? super java.lang.Long> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.im.freechat.data.l.l0
            if (r0 == 0) goto L13
            r0 = r8
            com.im.freechat.data.l$l0 r0 = (com.im.freechat.data.l.l0) r0
            int r1 = r0.f40977c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f40977c = r1
            goto L18
        L13:
            com.im.freechat.data.l$l0 r0 = new com.im.freechat.data.l$l0
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f40975a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f40977c
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L45
        L2a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L32:
            kotlin.ResultKt.throwOnFailure(r8)
            com.im.freechat.data.openapigen.api.MessageApi r8 = r5.f40774d
            com.im.freechat.data.l$m0 r2 = new com.im.freechat.data.l$m0
            r2.<init>(r6, r7, r3)
            r0.f40977c = r4
            java.lang.Object r8 = com.im.freechat.data.a.b(r8, r2, r0)
            if (r8 != r1) goto L45
            return r1
        L45:
            com.im.freechat.data.openapigen.models.SendText200Response r8 = (com.im.freechat.data.openapigen.models.SendText200Response) r8
            if (r8 == 0) goto L51
            long r6 = r8.getData()
            java.lang.Long r3 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r6)
        L51:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            long r6 = r3.longValue()
            java.lang.Long r6 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.q0(com.im.freechat.data.sources.database.entities.message.MessageEntity, com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object r0(com.im.freechat.data.sources.database.entities.message.MessageEntity r6, java.util.List<com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity> r7, kotlin.coroutines.Continuation<? super java.lang.Long> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.im.freechat.data.l.n0
            if (r0 == 0) goto L13
            r0 = r8
            com.im.freechat.data.l$n0 r0 = (com.im.freechat.data.l.n0) r0
            int r1 = r0.f41003c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41003c = r1
            goto L18
        L13:
            com.im.freechat.data.l$n0 r0 = new com.im.freechat.data.l$n0
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f41001a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41003c
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L45
        L2a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L32:
            kotlin.ResultKt.throwOnFailure(r8)
            com.im.freechat.data.openapigen.api.MessageApi r8 = r5.f40774d
            com.im.freechat.data.l$o0 r2 = new com.im.freechat.data.l$o0
            r2.<init>(r6, r5, r7, r3)
            r0.f41003c = r4
            java.lang.Object r8 = com.im.freechat.data.a.b(r8, r2, r0)
            if (r8 != r1) goto L45
            return r1
        L45:
            com.im.freechat.data.openapigen.models.SendText200Response r8 = (com.im.freechat.data.openapigen.models.SendText200Response) r8
            if (r8 == 0) goto L51
            long r6 = r8.getData()
            java.lang.Long r3 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r6)
        L51:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.r0(com.im.freechat.data.sources.database.entities.message.MessageEntity, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0132 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01ff A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0269 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x0247 -> B:81:0x024a). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object s0(com.im.freechat.data.sources.database.entities.message.MessageEntity r18, java.util.List<com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity> r19, kotlin.coroutines.Continuation<? super kotlin.Unit> r20) {
        /*
            Method dump skipped, instructions count: 664
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.s0(com.im.freechat.data.sources.database.entities.message.MessageEntity, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object t0(com.im.freechat.data.sources.database.entities.message.MessageEntity r6, com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity r7, kotlin.coroutines.Continuation<? super java.lang.Long> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.im.freechat.data.l.s0
            if (r0 == 0) goto L13
            r0 = r8
            com.im.freechat.data.l$s0 r0 = (com.im.freechat.data.l.s0) r0
            int r1 = r0.f41100c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41100c = r1
            goto L18
        L13:
            com.im.freechat.data.l$s0 r0 = new com.im.freechat.data.l$s0
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f41098a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41100c
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L45
        L2a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L32:
            kotlin.ResultKt.throwOnFailure(r8)
            com.im.freechat.data.openapigen.api.MessageApi r8 = r5.f40774d
            com.im.freechat.data.l$t0 r2 = new com.im.freechat.data.l$t0
            r2.<init>(r6, r7, r3)
            r0.f41100c = r4
            java.lang.Object r8 = com.im.freechat.data.a.b(r8, r2, r0)
            if (r8 != r1) goto L45
            return r1
        L45:
            com.im.freechat.data.openapigen.models.SendText200Response r8 = (com.im.freechat.data.openapigen.models.SendText200Response) r8
            if (r8 == 0) goto L51
            long r6 = r8.getData()
            java.lang.Long r3 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r6)
        L51:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            long r6 = r3.longValue()
            java.lang.Long r6 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.t0(com.im.freechat.data.sources.database.entities.message.MessageEntity, com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e7 A[RETURN] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.util.List, T] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object v0(java.util.List<com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity> r23, kotlin.coroutines.Continuation<? super java.util.List<com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity>> r24) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.v0(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object A(int r11, long r12, @m8.g java.lang.String r14, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r15) {
        /*
            r10 = this;
            boolean r0 = r15 instanceof com.im.freechat.data.l.w
            if (r0 == 0) goto L13
            r0 = r15
            com.im.freechat.data.l$w r0 = (com.im.freechat.data.l.w) r0
            int r1 = r0.f41133f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41133f = r1
            goto L18
        L13:
            com.im.freechat.data.l$w r0 = new com.im.freechat.data.l$w
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.f41131d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41133f
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            long r12 = r0.f41130c
            java.lang.Object r11 = r0.f41129b
            r14 = r11
            java.lang.String r14 = (java.lang.String) r14
            java.lang.Object r11 = r0.f41128a
            com.im.freechat.data.l r11 = (com.im.freechat.data.l) r11
            kotlin.ResultKt.throwOnFailure(r15)
            goto L5b
        L34:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L3c:
            kotlin.ResultKt.throwOnFailure(r15)
            com.im.freechat.data.openapigen.api.MessageApi r15 = r10.f40774d
            com.im.freechat.data.l$x r2 = new com.im.freechat.data.l$x
            r9 = 0
            r4 = r2
            r5 = r11
            r6 = r12
            r8 = r14
            r4.<init>(r5, r6, r8, r9)
            r0.f41128a = r10
            r0.f41129b = r14
            r0.f41130c = r12
            r0.f41133f = r3
            java.lang.Object r15 = com.im.freechat.data.a.b(r15, r2, r0)
            if (r15 != r1) goto L5a
            return r1
        L5a:
            r11 = r10
        L5b:
            r1 = r12
            r3 = r14
            com.im.freechat.data.openapigen.models.EditMessageText200Response r15 = (com.im.freechat.data.openapigen.models.EditMessageText200Response) r15
            if (r15 == 0) goto L6a
            com.im.freechat.data.sources.database.entities.message.MessageDao r0 = r11.f40784n
            r4 = 0
            r6 = 4
            r7 = 0
            com.im.freechat.data.sources.database.entities.message.MessageDao.modifyMessage$default(r0, r1, r3, r4, r6, r7)
        L6a:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.A(int, long, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0065 A[RETURN] */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object B(int r7, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.im.freechat.data.l.l1
            if (r0 == 0) goto L13
            r0 = r8
            com.im.freechat.data.l$l1 r0 = (com.im.freechat.data.l.l1) r0
            int r1 = r0.f40982e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f40982e = r1
            goto L18
        L13:
            com.im.freechat.data.l$l1 r0 = new com.im.freechat.data.l$l1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f40980c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f40982e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3f
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L66
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            int r7 = r0.f40979b
            java.lang.Object r2 = r0.f40978a
            com.im.freechat.data.l r2 = (com.im.freechat.data.l) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L57
        L3f:
            kotlin.ResultKt.throwOnFailure(r8)
            com.im.freechat.data.openapigen.api.MessageApi r8 = r6.f40774d
            com.im.freechat.data.l$m1 r2 = new com.im.freechat.data.l$m1
            r2.<init>(r7, r5)
            r0.f40978a = r6
            r0.f40979b = r7
            r0.f40982e = r4
            java.lang.Object r8 = com.im.freechat.data.a.f(r8, r2, r0)
            if (r8 != r1) goto L56
            return r1
        L56:
            r2 = r6
        L57:
            com.im.freechat.data.openapigen.models.EditMessageText200Response r8 = (com.im.freechat.data.openapigen.models.EditMessageText200Response) r8
            com.im.freechat.data.sources.database.entities.chat.ChatDao r8 = r2.f40781k
            r0.f40978a = r5
            r0.f40982e = r3
            java.lang.Object r7 = r8.pinMessage(r7, r5, r5, r0)
            if (r7 != r1) goto L66
            return r1
        L66:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.B(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x04a6  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x04cc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x04cd  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x04e4  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x051f  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0543  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02ea A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01e5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x025c A[LOOP:4: B:46:0x0256->B:48:0x025c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x028f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03ff  */
    /* JADX WARN: Type inference failed for: r11v15, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r11v8, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r13v8, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r14v8, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r8v33 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x04cd -> B:114:0x04d1). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:115:0x04e4 -> B:116:0x04f2). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:117:0x050d -> B:71:0x02fc). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x02ed -> B:71:0x02fc). Please submit an issue!!! */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object C(long r44, @m8.g java.util.List<java.lang.Integer> r46, @m8.g kotlin.coroutines.Continuation<? super java.lang.Long> r47) {
        /*
            Method dump skipped, instructions count: 1380
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.C(long, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0082 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e4 A[RETURN] */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object D(@m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r23) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.D(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b7 A[RETURN] */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object E(int r17, int r18, @m8.g java.util.List<java.lang.Long> r19, @m8.h java.lang.String r20, @m8.g java.util.List<java.lang.String> r21, boolean r22, @m8.g java.util.Map<java.lang.Integer, java.lang.String> r23, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r24) {
        /*
            r16 = this;
            r10 = r16
            r0 = r24
            boolean r1 = r0 instanceof com.im.freechat.data.l.n
            if (r1 == 0) goto L17
            r1 = r0
            com.im.freechat.data.l$n r1 = (com.im.freechat.data.l.n) r1
            int r2 = r1.f41000g
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.f41000g = r2
            goto L1c
        L17:
            com.im.freechat.data.l$n r1 = new com.im.freechat.data.l$n
            r1.<init>(r0)
        L1c:
            r11 = r1
            java.lang.Object r0 = r11.f40998e
            java.lang.Object r12 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.f41000g
            r13 = 2
            r2 = 1
            if (r1 == 0) goto L4c
            if (r1 == r2) goto L3a
            if (r1 != r13) goto L32
            kotlin.ResultKt.throwOnFailure(r0)
            goto Lb8
        L32:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3a:
            int r1 = r11.f40997d
            int r2 = r11.f40996c
            java.lang.Object r3 = r11.f40995b
            java.util.List r3 = (java.util.List) r3
            java.lang.Object r4 = r11.f40994a
            com.im.freechat.data.l r4 = (com.im.freechat.data.l) r4
            kotlin.ResultKt.throwOnFailure(r0)
            r15 = r2
            r14 = r3
            goto L98
        L4c:
            kotlin.ResultKt.throwOnFailure(r0)
            if (r20 == 0) goto L5a
            int r0 = r20.length()
            if (r0 != 0) goto L58
            goto L5a
        L58:
            r0 = 0
            goto L5b
        L5a:
            r0 = 1
        L5b:
            if (r0 == 0) goto L6d
            boolean r0 = r21.isEmpty()
            r0 = r0 ^ r2
            if (r0 == 0) goto L65
            goto L6d
        L65:
            r15 = r17
            r1 = r18
            r14 = r19
        L6b:
            r4 = r10
            goto L98
        L6d:
            r5 = 0
            r8 = 0
            r11.f40994a = r10
            r14 = r19
            r11.f40995b = r14
            r15 = r17
            r11.f40996c = r15
            r9 = r18
            r11.f40997d = r9
            r11.f41000g = r2
            r0 = r16
            r1 = r17
            r2 = r18
            r3 = r20
            r4 = r21
            r6 = r22
            r7 = r23
            r9 = r11
            java.lang.Object r0 = r0.Q(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            if (r0 != r12) goto L95
            return r12
        L95:
            r1 = r18
            goto L6b
        L98:
            com.im.freechat.data.l$o r0 = new com.im.freechat.data.l$o
            r2 = 0
            r17 = r0
            r18 = r4
            r19 = r14
            r20 = r15
            r21 = r1
            r22 = r2
            r17.<init>(r19, r20, r21, r22)
            r1 = 0
            r11.f40994a = r1
            r11.f40995b = r1
            r11.f41000g = r13
            java.lang.Object r0 = kotlinx.coroutines.t0.g(r0, r11)
            if (r0 != r12) goto Lb8
            return r12
        Lb8:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.E(int, int, java.util.List, java.lang.String, java.util.List, boolean, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0402 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x043f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0440  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x04aa A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x04ab  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x04be  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01b5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x022a A[LOOP:1: B:43:0x0224->B:45:0x022a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0286 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02c3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02e3 A[LOOP:4: B:67:0x02dd->B:69:0x02e3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0306 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x03a0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x03a1  */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r12v46, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r13v33 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:131:0x04ab -> B:132:0x04b2). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:85:0x0338 -> B:86:0x033f). Please submit an issue!!! */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object F(int r24, @m8.g kotlin.coroutines.Continuation<? super java.util.Map<java.lang.Integer, kotlin.Pair<java.lang.Long, java.lang.Long>>> r25) {
        /*
            Method dump skipped, instructions count: 1270
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.F(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0087  */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object G(int r9, boolean r10, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof com.im.freechat.data.l.c0
            if (r0 == 0) goto L13
            r0 = r11
            com.im.freechat.data.l$c0 r0 = (com.im.freechat.data.l.c0) r0
            int r1 = r0.f40824f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f40824f = r1
            goto L18
        L13:
            com.im.freechat.data.l$c0 r0 = new com.im.freechat.data.l$c0
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.f40822d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f40824f
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L48
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            boolean r10 = r0.f40821c
            int r9 = r0.f40820b
            java.lang.Object r0 = r0.f40819a
            com.im.freechat.data.l r0 = (com.im.freechat.data.l) r0
            kotlin.ResultKt.throwOnFailure(r11)
            goto L7d
        L34:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3c:
            boolean r10 = r0.f40821c
            int r9 = r0.f40820b
            java.lang.Object r0 = r0.f40819a
            com.im.freechat.data.l r0 = (com.im.freechat.data.l) r0
            kotlin.ResultKt.throwOnFailure(r11)
            goto L65
        L48:
            kotlin.ResultKt.throwOnFailure(r11)
            com.im.freechat.data.openapigen.api.FriendApi r11 = r8.f40772b
            r2 = 0
            if (r10 == 0) goto L68
            com.im.freechat.data.l$d0 r3 = new com.im.freechat.data.l$d0
            r3.<init>(r9, r2)
            r0.f40819a = r8
            r0.f40820b = r9
            r0.f40821c = r10
            r0.f40824f = r4
            java.lang.Object r11 = com.im.freechat.data.a.f(r11, r3, r0)
            if (r11 != r1) goto L64
            return r1
        L64:
            r0 = r8
        L65:
            com.im.freechat.data.openapigen.models.EditMessageText200Response r11 = (com.im.freechat.data.openapigen.models.EditMessageText200Response) r11
            goto L7f
        L68:
            com.im.freechat.data.l$e0 r4 = new com.im.freechat.data.l$e0
            r4.<init>(r9, r2)
            r0.f40819a = r8
            r0.f40820b = r9
            r0.f40821c = r10
            r0.f40824f = r3
            java.lang.Object r11 = com.im.freechat.data.a.f(r11, r4, r0)
            if (r11 != r1) goto L7c
            return r1
        L7c:
            r0 = r8
        L7d:
            com.im.freechat.data.openapigen.models.EditMessageText200Response r11 = (com.im.freechat.data.openapigen.models.EditMessageText200Response) r11
        L7f:
            com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao r11 = r0.f40786p
            com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusEntity r0 = r11.getByUserId(r9)
            if (r0 == 0) goto L9c
            r1 = 0
            r2 = 0
            r4 = 0
            if (r10 == 0) goto L90
            com.im.freechat.shared.entities.chat.Status r9 = com.im.freechat.shared.entities.chat.Status.FRIEND
            goto L92
        L90:
            com.im.freechat.shared.entities.chat.Status r9 = com.im.freechat.shared.entities.chat.Status.NONE
        L92:
            r5 = r9
            r6 = 7
            r7 = 0
            com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusEntity r9 = com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusEntity.copy$default(r0, r1, r2, r4, r5, r6, r7)
            r11.updateChatRequest(r9)
        L9c:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.G(int, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object H(@m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object f10 = com.im.freechat.data.a.f(this.f40773c, new u0(null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return f10 == coroutine_suspended ? f10 : Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object I(int i4, int i10, boolean z9, @m8.g Continuation<? super Unit> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00cd A[RETURN] */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object J(int r19, @m8.h java.lang.String r20, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r21) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.J(int, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0083 A[RETURN] */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object K(int r7, int r8, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r6 = this;
            boolean r7 = r9 instanceof com.im.freechat.data.l.t
            if (r7 == 0) goto L13
            r7 = r9
            com.im.freechat.data.l$t r7 = (com.im.freechat.data.l.t) r7
            int r0 = r7.f41105e
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r7.f41105e = r0
            goto L18
        L13:
            com.im.freechat.data.l$t r7 = new com.im.freechat.data.l$t
            r7.<init>(r9)
        L18:
            java.lang.Object r9 = r7.f41103c
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.f41105e
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L4c
            if (r1 == r5) goto L42
            if (r1 == r4) goto L38
            if (r1 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r9)
            goto L84
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L38:
            int r8 = r7.f41102b
            java.lang.Object r1 = r7.f41101a
            com.im.freechat.data.l r1 = (com.im.freechat.data.l) r1
            kotlin.ResultKt.throwOnFailure(r9)
            goto L77
        L42:
            int r8 = r7.f41102b
            java.lang.Object r1 = r7.f41101a
            com.im.freechat.data.l r1 = (com.im.freechat.data.l) r1
            kotlin.ResultKt.throwOnFailure(r9)
            goto L64
        L4c:
            kotlin.ResultKt.throwOnFailure(r9)
            com.im.freechat.data.openapigen.api.ChatApi r9 = r6.f40771a
            com.im.freechat.data.l$u r1 = new com.im.freechat.data.l$u
            r1.<init>(r8, r2)
            r7.f41101a = r6
            r7.f41102b = r8
            r7.f41105e = r5
            java.lang.Object r9 = com.im.freechat.data.a.b(r9, r1, r7)
            if (r9 != r0) goto L63
            return r0
        L63:
            r1 = r6
        L64:
            com.im.freechat.data.openapigen.models.EditMessageText200Response r9 = (com.im.freechat.data.openapigen.models.EditMessageText200Response) r9
            if (r9 == 0) goto L84
            com.im.freechat.data.sources.database.entities.chat.ChatDao r9 = r1.f40781k
            r7.f41101a = r1
            r7.f41102b = r8
            r7.f41105e = r4
            java.lang.Object r9 = r9.deleteChatById(r8, r7)
            if (r9 != r0) goto L77
            return r0
        L77:
            com.im.freechat.data.sources.database.entities.message.MessageDao r9 = r1.f40784n
            r7.f41101a = r2
            r7.f41105e = r3
            java.lang.Object r7 = r9.deleteByChatId(r8, r7)
            if (r7 != r0) goto L84
            return r0
        L84:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.K(int, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object L(int i4, int i10, boolean z9, @m8.g Continuation<? super Unit> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0093 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d7  */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object M(int r11, int r12, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.M(int, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object N(int i4, @m8.g String str, @m8.g Continuation<? super Unit> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0163 A[LOOP:5: B:38:0x015d->B:40:0x0163, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x018a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0203 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0221 A[LOOP:2: B:63:0x021b->B:65:0x0221, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0248 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0350  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:86:0x02f3 -> B:87:0x02f5). Please submit an issue!!! */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object O(int r21, @m8.g java.util.List<java.lang.Long> r22, int r23, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r24) {
        /*
            Method dump skipped, instructions count: 876
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.O(int, java.util.List, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object P(int i4, int i10, int i11, @m8.g Continuation<? super Unit> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01c1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0229 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x023c A[RETURN] */
    /* JADX WARN: Type inference failed for: r10v13, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r14v5, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.im.freechat.data.l] */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x01c2 -> B:39:0x01c7). Please submit an issue!!! */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object Q(int r37, int r38, @m8.h java.lang.String r39, @m8.g java.util.List<java.lang.String> r40, @m8.h java.lang.Long r41, boolean r42, @m8.g java.util.Map<java.lang.Integer, java.lang.String> r43, boolean r44, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r45) {
        /*
            Method dump skipped, instructions count: 678
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.Q(int, int, java.lang.String, java.util.List, java.lang.Long, boolean, java.util.Map, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b6 A[LOOP:0: B:33:0x00b0->B:35:0x00b6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00db A[RETURN] */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object R(@m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r15) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.R(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object S(int i4, @m8.g String str, @m8.g Continuation<? super Unit> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object T(int r9, long r10, @m8.g java.lang.String r12, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
        /*
            r8 = this;
            boolean r0 = r13 instanceof com.im.freechat.data.l.v
            if (r0 == 0) goto L13
            r0 = r13
            com.im.freechat.data.l$v r0 = (com.im.freechat.data.l.v) r0
            int r1 = r0.f41120f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41120f = r1
            goto L18
        L13:
            com.im.freechat.data.l$v r0 = new com.im.freechat.data.l$v
            r0.<init>(r13)
        L18:
            java.lang.Object r13 = r0.f41118d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41120f
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            long r10 = r0.f41117c
            java.lang.Object r9 = r0.f41116b
            r12 = r9
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r9 = r0.f41115a
            com.im.freechat.data.l r9 = (com.im.freechat.data.l) r9
            kotlin.ResultKt.throwOnFailure(r13)
            goto L56
        L34:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3c:
            kotlin.ResultKt.throwOnFailure(r13)
            com.im.freechat.data.openapigen.api.MessageApi r13 = r8.f40774d
            com.im.freechat.data.openapigen.models.EditMessageCaptionRequest r2 = new com.im.freechat.data.openapigen.models.EditMessageCaptionRequest
            r2.<init>(r9, r10, r12)
            r0.f41115a = r8
            r0.f41116b = r12
            r0.f41117c = r10
            r0.f41120f = r3
            java.lang.Object r9 = r13.editMessageCaption(r2, r0)
            if (r9 != r1) goto L55
            return r1
        L55:
            r9 = r8
        L56:
            r1 = r10
            r3 = r12
            com.im.freechat.data.sources.database.entities.message.MessageDao r0 = r9.f40784n
            r4 = 0
            r6 = 4
            r7 = 0
            com.im.freechat.data.sources.database.entities.message.MessageDao.modifyMessage$default(r0, r1, r3, r4, r6, r7)
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.T(int, long, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object U(int i4, int i10, @m8.g File file, @m8.g Continuation<? super Unit> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00fc A[LOOP:0: B:39:0x00f6->B:41:0x00fc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011c A[RETURN] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v5, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.util.Collection] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00c5 -> B:33:0x00c6). Please submit an issue!!! */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object a(@m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r14) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object b(@m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object f10 = com.im.freechat.data.a.f(this.f40773c, new s(null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return f10 == coroutine_suspended ? f10 : Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object c(int i4, int i10, @m8.g String str, @m8.g Continuation<? super Unit> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object d(int i4, int i10, @m8.g Continuation<? super Integer> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object e(int i4, int i10, boolean z9, @m8.g Continuation<? super Unit> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object f(int i4, int i10, int i11, @m8.g Continuation<? super Unit> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0085 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ac A[RETURN] */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object g(int r9, int r10, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof com.im.freechat.data.l.v0
            if (r0 == 0) goto L13
            r0 = r11
            com.im.freechat.data.l$v0 r0 = (com.im.freechat.data.l.v0) r0
            int r1 = r0.f41127g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41127g = r1
            goto L18
        L13:
            com.im.freechat.data.l$v0 r0 = new com.im.freechat.data.l$v0
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.f41125e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41127g
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L55
            if (r2 == r5) goto L49
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            kotlin.ResultKt.throwOnFailure(r11)
            goto Lad
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            int r9 = r0.f41124d
            int r10 = r0.f41123c
            java.lang.Object r2 = r0.f41122b
            com.im.freechat.data.openapigen.models.GetChat200Response r2 = (com.im.freechat.data.openapigen.models.GetChat200Response) r2
            java.lang.Object r4 = r0.f41121a
            com.im.freechat.data.l r4 = (com.im.freechat.data.l) r4
            kotlin.ResultKt.throwOnFailure(r11)
            goto L8b
        L49:
            int r10 = r0.f41124d
            int r9 = r0.f41123c
            java.lang.Object r2 = r0.f41121a
            com.im.freechat.data.l r2 = (com.im.freechat.data.l) r2
            kotlin.ResultKt.throwOnFailure(r11)
            goto L6f
        L55:
            kotlin.ResultKt.throwOnFailure(r11)
            com.im.freechat.data.openapigen.api.ChatApi r11 = r8.f40771a
            com.im.freechat.data.l$w0 r2 = new com.im.freechat.data.l$w0
            r2.<init>(r10, r6)
            r0.f41121a = r8
            r0.f41123c = r9
            r0.f41124d = r10
            r0.f41127g = r5
            java.lang.Object r11 = com.im.freechat.data.a.f(r11, r2, r0)
            if (r11 != r1) goto L6e
            return r1
        L6e:
            r2 = r8
        L6f:
            com.im.freechat.data.openapigen.models.GetChat200Response r11 = (com.im.freechat.data.openapigen.models.GetChat200Response) r11
            com.im.freechat.data.openapigen.models.Chat r5 = r11.getData()
            r0.f41121a = r2
            r0.f41122b = r11
            r0.f41123c = r9
            r0.f41124d = r10
            r0.f41127g = r4
            java.lang.Object r4 = r2.m0(r5, r9, r0)
            if (r4 != r1) goto L86
            return r1
        L86:
            r4 = r2
            r2 = r11
            r7 = r10
            r10 = r9
            r9 = r7
        L8b:
            kotlin.Pair r11 = new kotlin.Pair
            com.im.freechat.data.openapigen.models.Chat r5 = r2.getData()
            java.lang.Long r5 = r5.getLastReadMessageId()
            com.im.freechat.data.openapigen.models.Chat r2 = r2.getData()
            java.lang.Long r2 = r2.getOpponentLastReadMessageId()
            r11.<init>(r5, r2)
            r0.f41121a = r6
            r0.f41122b = r6
            r0.f41127g = r3
            java.lang.Object r9 = r4.n(r10, r9, r11, r0)
            if (r9 != r1) goto Lad
            return r1
        Lad:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.g(int, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object getUser(int r8, @m8.g kotlin.coroutines.Continuation<? super com.im.freechat.shared.entities.contact.UserModel> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.im.freechat.data.l.q
            if (r0 == 0) goto L13
            r0 = r9
            com.im.freechat.data.l$q r0 = (com.im.freechat.data.l.q) r0
            int r1 = r0.f41069d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41069d = r1
            goto L18
        L13:
            com.im.freechat.data.l$q r0 = new com.im.freechat.data.l$q
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f41067b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41069d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r8 = r0.f41066a
            com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r8 = (com.im.freechat.data.sources.database.entities.contact.UserEntityMapper) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto L50
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L35:
            kotlin.ResultKt.throwOnFailure(r9)
            com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r9 = r7.f40789s
            com.im.freechat.data.openapigen.api.UserApi r2 = r7.f40773c
            com.im.freechat.data.l$r r4 = new com.im.freechat.data.l$r
            r5 = 0
            r4.<init>(r8, r5)
            r0.f41066a = r9
            r0.f41069d = r3
            java.lang.Object r8 = com.im.freechat.data.a.f(r2, r4, r0)
            if (r8 != r1) goto L4d
            return r1
        L4d:
            r6 = r9
            r9 = r8
            r8 = r6
        L50:
            com.im.freechat.data.openapigen.models.GetUser200Response r9 = (com.im.freechat.data.openapigen.models.GetUser200Response) r9
            com.im.freechat.data.openapigen.models.User r9 = r9.getData()
            com.im.freechat.shared.entities.contact.UserModel r8 = r8.mapUserModel(r9)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.getUser(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.t
    @m8.g
    public kotlinx.coroutines.flow.i<Boolean> h() {
        return this.f40790t;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0081 A[RETURN] */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object i(@m8.g com.im.freechat.shared.entities.message.Message r9, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.im.freechat.data.l.y
            if (r0 == 0) goto L13
            r0 = r10
            com.im.freechat.data.l$y r0 = (com.im.freechat.data.l.y) r0
            int r1 = r0.f41157e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41157e = r1
            goto L18
        L13:
            com.im.freechat.data.l$y r0 = new com.im.freechat.data.l$y
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f41155c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f41157e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L41
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r10)
            goto L82
        L2d:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L35:
            java.lang.Object r9 = r0.f41154b
            com.im.freechat.shared.entities.message.Message r9 = (com.im.freechat.shared.entities.message.Message) r9
            java.lang.Object r2 = r0.f41153a
            com.im.freechat.data.l r2 = (com.im.freechat.data.l) r2
            kotlin.ResultKt.throwOnFailure(r10)
            goto L59
        L41:
            kotlin.ResultKt.throwOnFailure(r10)
            com.im.freechat.data.openapigen.api.MessageApi r10 = r8.f40774d
            com.im.freechat.data.l$z r2 = new com.im.freechat.data.l$z
            r2.<init>(r9, r5)
            r0.f41153a = r8
            r0.f41154b = r9
            r0.f41157e = r4
            java.lang.Object r10 = com.im.freechat.data.a.f(r10, r2, r0)
            if (r10 != r1) goto L58
            return r1
        L58:
            r2 = r8
        L59:
            com.im.freechat.data.openapigen.models.EditMessageText200Response r10 = (com.im.freechat.data.openapigen.models.EditMessageText200Response) r10
            com.im.freechat.data.sources.database.entities.chat.ChatDao r10 = r2.f40781k
            int r2 = r9.getChatId()
            long r6 = r9.getMessageId()
            java.lang.Long r4 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r6)
            com.im.freechat.shared.entities.contact.Sender r9 = r9.getSender()
            int r9 = r9.getUserId()
            java.lang.Integer r9 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r9)
            r0.f41153a = r5
            r0.f41154b = r5
            r0.f41157e = r3
            java.lang.Object r9 = r10.pinMessage(r2, r4, r9, r0)
            if (r9 != r1) goto L82
            return r1
        L82:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.i(com.im.freechat.shared.entities.message.Message, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0171 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01d8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01f7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x021d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0258 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x028a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x029e A[RETURN] */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object j(int r37, int r38, @m8.g java.lang.String r39, int r40, int r41, @m8.h java.lang.Long r42, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r43) {
        /*
            Method dump skipped, instructions count: 696
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.j(int, int, java.lang.String, int, int, java.lang.Long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object k(int i4, long j4, @m8.g String str, @m8.g Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d4 A[RETURN] */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object l(int r13, @m8.g com.im.freechat.shared.entities.message.Message r14, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r15) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.l(int, com.im.freechat.shared.entities.message.Message, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object m(int i4, int i10, int i11, @m8.g Continuation<? super Unit> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0190 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0233 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0286 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02b5 A[LOOP:4: B:69:0x02af->B:71:0x02b5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02d8 A[LOOP:5: B:73:0x02d2->B:75:0x02d8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0395 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0396  */
    /* JADX WARN: Type inference failed for: r10v13, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r14v24 */
    /* JADX WARN: Type inference failed for: r14v25, types: [T] */
    /* JADX WARN: Type inference failed for: r14v32 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v25, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:97:0x0396 -> B:98:0x039a). Please submit an issue!!! */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object n(int r21, int r22, @m8.g kotlin.Pair<java.lang.Long, java.lang.Long> r23, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r24) {
        /*
            Method dump skipped, instructions count: 952
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.n(int, int, kotlin.Pair, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c9  */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v3 */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object o(int r8, long r9, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
            Method dump skipped, instructions count: 203
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.o(int, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object p(int r6, boolean r7, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r5 = this;
            boolean r7 = r8 instanceof com.im.freechat.data.l.c
            if (r7 == 0) goto L13
            r7 = r8
            com.im.freechat.data.l$c r7 = (com.im.freechat.data.l.c) r7
            int r0 = r7.f40818e
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r7.f40818e = r0
            goto L18
        L13:
            com.im.freechat.data.l$c r7 = new com.im.freechat.data.l$c
            r7.<init>(r8)
        L18:
            java.lang.Object r8 = r7.f40816c
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.f40818e
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L3f
            if (r1 == r4) goto L35
            if (r1 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L68
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            int r6 = r7.f40815b
            java.lang.Object r1 = r7.f40814a
            com.im.freechat.data.l r1 = (com.im.freechat.data.l) r1
            kotlin.ResultKt.throwOnFailure(r8)
            goto L57
        L3f:
            kotlin.ResultKt.throwOnFailure(r8)
            com.im.freechat.data.openapigen.api.ChatApi r8 = r5.f40771a
            com.im.freechat.data.l$d r1 = new com.im.freechat.data.l$d
            r1.<init>(r6, r2)
            r7.f40814a = r5
            r7.f40815b = r6
            r7.f40818e = r4
            java.lang.Object r8 = com.im.freechat.data.a.b(r8, r1, r7)
            if (r8 != r0) goto L56
            return r0
        L56:
            r1 = r5
        L57:
            com.im.freechat.data.openapigen.models.EditMessageText200Response r8 = (com.im.freechat.data.openapigen.models.EditMessageText200Response) r8
            if (r8 == 0) goto L68
            com.im.freechat.data.sources.database.entities.message.MessageDao r8 = r1.f40784n
            r7.f40814a = r2
            r7.f40818e = r3
            java.lang.Object r6 = r8.deleteByChatId(r6, r7)
            if (r6 != r0) goto L68
            return r0
        L68:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.p(int, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object q(int i4, int i10, int i11, @m8.g Continuation<? super Unit> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object r(int i4, @m8.g String str, @m8.g Continuation<? super Unit> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0112 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0122 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x014b A[RETURN] */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object s(int r22, @m8.g kotlin.coroutines.Continuation<? super java.lang.Integer> r23) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.s(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    @Override // com.im.freechat.domain.t
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object t(int r7, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.im.freechat.data.l.g
            if (r0 == 0) goto L13
            r0 = r8
            com.im.freechat.data.l$g r0 = (com.im.freechat.data.l.g) r0
            int r1 = r0.f40878e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f40878e = r1
            goto L18
        L13:
            com.im.freechat.data.l$g r0 = new com.im.freechat.data.l$g
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f40876c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f40878e
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3f
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L68
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            int r7 = r0.f40875b
            java.lang.Object r2 = r0.f40874a
            com.im.freechat.data.l r2 = (com.im.freechat.data.l) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L57
        L3f:
            kotlin.ResultKt.throwOnFailure(r8)
            com.im.freechat.data.openapigen.api.FriendApi r8 = r6.f40772b
            com.im.freechat.data.l$h r2 = new com.im.freechat.data.l$h
            r2.<init>(r7, r3)
            r0.f40874a = r6
            r0.f40875b = r7
            r0.f40878e = r5
            java.lang.Object r8 = com.im.freechat.data.a.b(r8, r2, r0)
            if (r8 != r1) goto L56
            return r1
        L56:
            r2 = r6
        L57:
            com.im.freechat.data.openapigen.models.EditMessageText200Response r8 = (com.im.freechat.data.openapigen.models.EditMessageText200Response) r8
            if (r8 == 0) goto L68
            com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao r8 = r2.f40786p
            r0.f40874a = r3
            r0.f40878e = r4
            java.lang.Object r7 = r8.deleteByUserId(r7, r0)
            if (r7 != r1) goto L68
            return r1
        L68:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.t(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.t
    public void u(boolean z9) {
        this.f40790t.setValue(Boolean.valueOf(z9));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006b A[RETURN] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object u0(int r7, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.im.freechat.data.l.j1
            if (r0 == 0) goto L13
            r0 = r8
            com.im.freechat.data.l$j1 r0 = (com.im.freechat.data.l.j1) r0
            int r1 = r0.f40947d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f40947d = r1
            goto L18
        L13:
            com.im.freechat.data.l$j1 r0 = new com.im.freechat.data.l$j1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f40945b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f40947d
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3d
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L6c
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            java.lang.Object r7 = r0.f40944a
            com.im.freechat.data.l r7 = (com.im.freechat.data.l) r7
            kotlin.ResultKt.throwOnFailure(r8)
            goto L53
        L3d:
            kotlin.ResultKt.throwOnFailure(r8)
            com.im.freechat.data.openapigen.api.UserApi r8 = r6.f40773c
            com.im.freechat.data.l$k1 r2 = new com.im.freechat.data.l$k1
            r2.<init>(r7, r3)
            r0.f40944a = r6
            r0.f40947d = r5
            java.lang.Object r8 = com.im.freechat.data.a.f(r8, r2, r0)
            if (r8 != r1) goto L52
            return r1
        L52:
            r7 = r6
        L53:
            com.im.freechat.data.openapigen.models.GetUser200Response r8 = (com.im.freechat.data.openapigen.models.GetUser200Response) r8
            com.im.freechat.data.sources.database.entities.contact.UserDao r2 = r7.f40782l
            com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r7 = r7.f40789s
            com.im.freechat.data.openapigen.models.User r8 = r8.getData()
            com.im.freechat.data.sources.database.entities.contact.UserEntity r7 = r7.map(r8)
            r0.f40944a = r3
            r0.f40947d = r4
            java.lang.Object r8 = r2.insert(r7, r0)
            if (r8 != r1) goto L6c
            return r1
        L6c:
            java.lang.Number r8 = (java.lang.Number) r8
            r8.longValue()
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.l.u0(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object v(int i4, int i10, @m8.g Continuation<? super Integer> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.im.freechat.domain.t
    public boolean w() {
        return this.f40790t.getValue().booleanValue();
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object x(int i4, int i10, int i11, @m8.g Continuation<? super Unit> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object y(int i4, @m8.g String str, @m8.g List<Integer> list, @m8.g Continuation<? super Integer> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.im.freechat.domain.t
    @m8.h
    public Object z(int i4, int i10, boolean z9, @m8.g Continuation<? super Unit> continuation) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }
}
