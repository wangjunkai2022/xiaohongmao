package org.bouncycastle.jce.provider;

import com.koushikdutta.async.http.AsyncHttpPost;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Extension;
import java.security.cert.X509Certificate;
import java.text.ParseException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1GeneralizedTime;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.ocsp.BasicOCSPResponse;
import org.bouncycastle.asn1.ocsp.CertID;
import org.bouncycastle.asn1.ocsp.OCSPObjectIdentifiers;
import org.bouncycastle.asn1.ocsp.OCSPRequest;
import org.bouncycastle.asn1.ocsp.OCSPResponse;
import org.bouncycastle.asn1.ocsp.Request;
import org.bouncycastle.asn1.ocsp.ResponseBytes;
import org.bouncycastle.asn1.ocsp.ResponseData;
import org.bouncycastle.asn1.ocsp.SingleResponse;
import org.bouncycastle.asn1.ocsp.TBSRequest;
import org.bouncycastle.asn1.x509.Extensions;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.jcajce.PKIXCertRevocationCheckerParameters;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.util.io.Streams;

/* loaded from: classes5.dex */
class OcspCache {
    private static final int DEFAULT_MAX_RESPONSE_SIZE = 32768;
    private static final int DEFAULT_TIMEOUT = 15000;
    private static Map<URI, WeakReference<Map<CertID, OCSPResponse>>> cache = Collections.synchronizedMap(new WeakHashMap());

    OcspCache() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static OCSPResponse getOcspResponse(CertID certID, PKIXCertRevocationCheckerParameters pKIXCertRevocationCheckerParameters, URI uri, X509Certificate x509Certificate, List<Extension> list, JcaJceHelper jcaJceHelper) throws CertPathValidatorException {
        OCSPResponse oCSPResponse;
        ASN1GeneralizedTime nextUpdate;
        WeakReference<Map<CertID, OCSPResponse>> weakReference = cache.get(uri);
        Map<CertID, OCSPResponse> map = weakReference != null ? weakReference.get() : null;
        boolean z9 = false;
        if (map != null && (oCSPResponse = map.get(certID)) != null) {
            ASN1Sequence responses = ResponseData.getInstance(BasicOCSPResponse.getInstance(ASN1OctetString.getInstance(oCSPResponse.getResponseBytes().getResponse()).getOctets()).getTbsResponseData()).getResponses();
            for (int i4 = 0; i4 != responses.size(); i4++) {
                SingleResponse singleResponse = SingleResponse.getInstance(responses.getObjectAt(i4));
                if (certID.equals(singleResponse.getCertID()) && (nextUpdate = singleResponse.getNextUpdate()) != null) {
                    try {
                    } catch (ParseException unused) {
                        map.remove(certID);
                    }
                    if (pKIXCertRevocationCheckerParameters.getValidDate().after(nextUpdate.getDate())) {
                        map.remove(certID);
                        oCSPResponse = null;
                    }
                }
            }
            if (oCSPResponse != null) {
                return oCSPResponse;
            }
        }
        try {
            URL url = uri.toURL();
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            aSN1EncodableVector.add(new Request(certID, null));
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
            byte[] bArr = null;
            for (int i10 = 0; i10 != list.size(); i10++) {
                Extension extension = list.get(i10);
                byte[] value = extension.getValue();
                if (OCSPObjectIdentifiers.id_pkix_ocsp_nonce.getId().equals(extension.getId())) {
                    bArr = value;
                }
                aSN1EncodableVector2.add(new org.bouncycastle.asn1.x509.Extension(new ASN1ObjectIdentifier(extension.getId()), extension.isCritical(), value));
            }
            try {
                byte[] encoded = new OCSPRequest(new TBSRequest((GeneralName) null, new DERSequence(aSN1EncodableVector), Extensions.getInstance(new DERSequence(aSN1EncodableVector2))), null).getEncoded();
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setReadTimeout(15000);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setRequestMethod(AsyncHttpPost.f44556o);
                httpURLConnection.setRequestProperty("Content-type", "application/ocsp-request");
                httpURLConnection.setRequestProperty("Content-length", String.valueOf(encoded.length));
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(encoded);
                outputStream.flush();
                InputStream inputStream = httpURLConnection.getInputStream();
                int contentLength = httpURLConnection.getContentLength();
                if (contentLength < 0) {
                    contentLength = 32768;
                }
                OCSPResponse oCSPResponse2 = OCSPResponse.getInstance(Streams.readAllLimited(inputStream, contentLength));
                try {
                    if (oCSPResponse2.getResponseStatus().getIntValue() != 0) {
                        throw new CertPathValidatorException("OCSP responder failed: " + oCSPResponse2.getResponseStatus().getValue(), null, pKIXCertRevocationCheckerParameters.getCertPath(), pKIXCertRevocationCheckerParameters.getIndex());
                    }
                    ResponseBytes responseBytes = ResponseBytes.getInstance(oCSPResponse2.getResponseBytes());
                    if (responseBytes.getResponseType().equals((ASN1Primitive) OCSPObjectIdentifiers.id_pkix_ocsp_basic)) {
                        z9 = ProvOcspRevocationChecker.validatedOcspResponse(BasicOCSPResponse.getInstance(responseBytes.getResponse().getOctets()), pKIXCertRevocationCheckerParameters, bArr, x509Certificate, jcaJceHelper);
                    }
                    if (z9) {
                        WeakReference<Map<CertID, OCSPResponse>> weakReference2 = cache.get(uri);
                        if (weakReference2 != null) {
                            weakReference2.get().put(certID, oCSPResponse2);
                        } else {
                            HashMap hashMap = new HashMap();
                            hashMap.put(certID, oCSPResponse2);
                            cache.put(uri, new WeakReference<>(hashMap));
                        }
                        return oCSPResponse2;
                    }
                    throw new CertPathValidatorException("OCSP response failed to validate", null, pKIXCertRevocationCheckerParameters.getCertPath(), pKIXCertRevocationCheckerParameters.getIndex());
                } catch (IOException e4) {
                    e = e4;
                    throw new CertPathValidatorException("configuration error: " + e.getMessage(), e, pKIXCertRevocationCheckerParameters.getCertPath(), pKIXCertRevocationCheckerParameters.getIndex());
                }
            } catch (IOException e10) {
                e = e10;
            }
        } catch (MalformedURLException e11) {
            throw new CertPathValidatorException("configuration error: " + e11.getMessage(), e11, pKIXCertRevocationCheckerParameters.getCertPath(), pKIXCertRevocationCheckerParameters.getIndex());
        }
    }
}
